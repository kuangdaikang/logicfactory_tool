import os
import gym
import regex
import numpy as np
from gym import error, spaces
from gym import utils
from ABC import *
from utils import *


class InnovusEnv(gym.Env, utils.EzPickle):
    def __init__(self, obs_dim, lib_file, lef_file, yosys_dir='../../netlist/yosys', innovus_dir='../innovus_script', action_dim=10, history_size=6):
        super().__init__()
        self.obs_fim = obs_dim
        self.history_size = history_size
        self.abc = None
        self.observation = None
        self.reward = 0
        self.done = False
        self.info = None
        self.size = 0
        self.depth = 0
        self.power = 0
        self.edge = 0
        self.filename = None
        self.quotient = 0
        self.history_action = [-1 for i in range(history_size)]
        self.history_reward = [2 for i in range(history_size)]
        self.action_space = spaces.Discrete(action_dim)
        self.lib_file = lib_file
        self.lef_file = lef_file
        self.innovus_dir = innovus_dir
        self.yosys_dir = yosys_dir
        self.actions = {
            0: 'balance',
            1: 'rewrite',
            2: 'rewrite -z',
            3: 'refactor',
            4: 'refactor -z',
            5: 'balance -l',
            6: 'rewrite -l',
            7: 'rewrite -z -l',
            8: 'refactor -l ',
            9: 'refactor -z -l',
            #           10: 'resub -K 6',
            #           11: 'resub -K 6 -N 2',
            #           12: 'resub -K 8',
            #           13: 'resub -K 8 -N 2',
            #           14: 'resub -K 10',
            #           15: 'resub -K 10 -N 2',
            #           16: 'resub -K 12',
            #           17: 'resub -K 12 -N 2
            18: 'balance;rewrite;rewrite -z;balance;rewrite -z;balance',
            19: 'balance;rewrite;refactor;balance;rewrite;rewrite -z;balance;refactor -z;rewrite -z;balance'
        }
        self.observation_space = spaces.Box(
            low=np.array([0 for i in range(obs_dim)] + [-1 for i in range(history_size * 2)]),
            high=np.array([0x7fffffff for i in range(obs_dim)] + [10 for i in range(history_size * 2)]),
            dtype=np.float64)

        self.seq_length = 0

    def stop(self):
        abc_end(self.abc)

    def step(self, action):
        obs, result_file = self.run_command(self.actions[action])
        [size, depth, power] = obs
        self.info = [self.size, self.depth, self.power]
        reward = self.size - size + self.quotient * (self.depth - depth) + self.power - power

        obs = get_feature(result_file)
        # TODO: rethink how to manege seq_length like in function reset
        obs.append(self.seq_length)
        obs += self.history_action + self.history_reward
        self.history_action.pop(0)
        self.history_action.append(int(action))
        self.history_reward.pop(0)
        if reward == 0:
            self.history_reward.append(0)
        elif reward < 0:
            self.history_reward.append(-1)
            reward = reward - self.seq_length
        else:
            self.history_reward.append(1)
            reward = reward - self.seq_length
        self.seq_length += 1
        self.size = size
        self.depth = depth
        self.power = power
        return np.array(obs), reward, self.done, self.info

    def setup(self, filename):
        if self.abc is not None:
            abc_end(self.abc)
        self.abc = abc_start()
        self.filename = filename
        abc_read(self.abc, self.filename)
        [self.size, self.depth, self.depth] = self.run_command('strash ')
        self.quotient = (self.size + 1) // (self.depth + +1)

    def reset(self):
        if self.abc is not None:
            abc_end(self.abc)
        self.abc = abc_start()
        abc_read(self.abc, self.filename)
        obs, result_file = self.run_command('strash ')
        [self.size, self.depth, self.power] = obs
        self.info = [self.size, self.depth, self.power]
        obs = get_feature(result_file)

        # TODO: how to manage seq_length need second thought
        obs.append(self.seq_length)
        self.history_action = [-1 for i in range(self.history_size)]
        self.history_reward = [2 for i in range(self.history_size)]
        obs += self.history_action + self.history_reward

        self.seq_length = 0
        return np.array(obs)

    def write(self, output=None, write_format="blif"):
        output = self.filename if output is None else output
        abc_write(self.abc, write_format, output)
        # NOTE: find some way to make sure os finished writing

    def run_command(self, cmd):
        abc_synthesis(self.abc, cmd)
        line = print_state(self.abc)[1]
        # print(line)
        tokens = regex.compile('[ =\n\r]+').split(line)
        size_index = tokens.index('and') + 1
        size = int(tokens[size_index])
        depth_index = tokens.index('lev') + 1
        depth = int(tokens[depth_index])

        post_syn_file = self.yosys_dir + "/PAS_syn_"+self.filename
        abc_write(self.abc, "verilog", post_syn_file)

        post_map_file = self.innovus_dir + "/PAS_map_" + self.filename
        generate_yosys_script(post_syn_file, post_map_file, self.lib_file, self.yosys_dir+"/_tem_PAS_yosys_script.ys")
        assert os.system("cd "+self.yosys_dir+";yosys _tem_PAS_yosys_script.ys") == 0
        os.remove(self.yosys_dir+"/_tem_PAS_yosys_script.ys")

        power_report = self.innovus_dir + "/power.rep"
        sdc_file = self.innovus_dir + "/" + os.path.splitext(os.path.split(self.filename)[1])[0] + ".sdc"
        libname = os.path.splitext(os.path.split(self.lib_file)[1])[0]
        generate_innovus_script(post_map_file, sdc_file, self.lib_file, libname, self.lef_file, self.innovus_dir)
        assert os.system("cd " + self.innovus_dir + ";make " + ";make clean") == 0
        power, _, _, _ = get_power(power_report)
        os.remove(power_report)
        os.remove(self.innovus_dir + "/flow.tcl")
        os.remove(self.innovus_dir + "/flow.view")
        os.remove(self.innovus_dir + "/io_assign.tcl")
        os.remove(self.innovus_dir + "/flow.globals")

        return [size, depth, power], post_map_file
