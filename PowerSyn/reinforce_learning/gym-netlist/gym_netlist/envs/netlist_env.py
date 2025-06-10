import os
import fcntl
import gym
import regex
import numpy as np
import sys
from gym import error, spaces
from gym import utils
from gym.utils import seeding
import subprocess
import random
import time
import math

o_path = os.getcwd()
sys.path.append(o_path + '/../gym-netlist/gym_netlist/envs/')
sys.path.append('/rshome/sunan.zou/nas/PowerAwareSynthesis/gym-netlist/gym_netlist/envs/')
import utils as ut


class NetlistEnv(gym.Env, utils.EzPickle):
    metadata = {'render.modes': ['human']}
    __program = ''
    abc = None
    observation = None
    reward = 0
    done = False
    info = None
    size = 0
    depth = 0
    edge = 0
    filename = None
    quotient = 0
    history_ac = []
    history_ef = []

    def __init__(self):
        self.action_space = spaces.Discrete(10)
        self.observation_space = spaces.Box(low=np.array([0 for i in range(181)] + [-1 for i in range(12)]),
                                            high=np.array([0x7fffffff for i in range(181)] + [10 for i in range(12)]),
                                            dtype=np.float64);
        self.history_ac = [-1 for i in range(6)]
        self.history_ef = [2 for i in range(6)]
        self.seq_length = 0

    def stop(self):
        self.abc.stdin.write('quit\n')
        self.abc.stdin.flush()

    def step(self, action):
        obs = self.__run(ACTION_LIB[action])
        [size, depth] = obs
        self.write(self.filename.replace('.blif\n', '') + 'AISynTempFile.blif')
        graph = ut.Graph()
        ut.parser(self.filename.replace('.blif\n', '') + 'AISynTempFile.blif', graph)
        ut.get_depth(graph)
        obs[0] /= len(graph.I)
        obs[1] /= len(graph.I)
        obs += graph.aignum + graph.depth_out + graph.depth_net + graph.aigout + graph.trans
        os.remove(self.filename.replace('.blif\n', '') + 'AISynTempFile.blif')
        obs.append(ut.myhash.Hash(graph.aignum, 100000037).outcome)
        reward = self.size - size + self.quotient * (self.depth - depth)
        obs += self.history_ac + self.history_ef
        self.history_ac.pop(0)
        self.history_ac.append(action)
        self.history_ef.pop(0)
        if reward == 0:
            self.history_ef.append(0)
        elif reward < 0:
            self.history_ef.append(-1)
            reward -= 0.1 * self.seq_length
        else:
            self.history_ef.append(1)
            reward *= math.exp(-self.seq_length)
        self.size = size
        self.depth = depth
        self.seq_length += 1
        return np.array(obs), reward, self.done, self.info

    def setup(self, filename):
        if (self.abc != None):
            self.abc.stdin.write('quit\n')
        self.abc = subprocess.Popen([self.__program], shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE,
                                    universal_newlines=True)
        flags = fcntl.fcntl(self.abc.stdout, fcntl.F_GETFL)
        fcntl.fcntl(self.abc.stdout, fcntl.F_SETFL, flags | os.O_NONBLOCK)
        self.filename = filename
        self.abc.stdin.write('read {}\n'.format(filename))
        self.abc.stdin.flush()
        self.__skip_until_echo()
        [self.size, self.depth] = self.__run('strash ')
        self.quotient = (self.size + 1) // (self.depth + +1)

    def reset(self):
        if (self.abc != None):
            self.abc.stdin.write('quit\n')
        self.abc = subprocess.Popen([self.__program], shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE,
                                    universal_newlines=True)
        flags = fcntl.fcntl(self.abc.stdout, fcntl.F_GETFL)
        fcntl.fcntl(self.abc.stdout, fcntl.F_SETFL, flags | os.O_NONBLOCK)
        self.abc.stdin.write('read {}\n'.format(self.filename))
        self.abc.stdin.flush()
        self.__skip_until_echo()
        obs = self.__run('strash ')
        [self.size, self.depth] = obs
        self.write(self.filename.replace('.blif\n', '') + 'AISynTempFile.blif')
        graph = ut.Graph()
        ut.parser(self.filename.replace('.blif\n', '') + 'AISynTempFile.blif', graph)
        ut.get_depth(graph)
        obs[0] /= len(graph.I)
        obs[1] /= len(graph.I)
        obs += graph.aignum + graph.depth_out + graph.depth_net + graph.aigout + graph.trans
        os.remove(self.filename.replace('.blif\n', '') + 'AISynTempFile.blif')
        obs.append(ut.myhash.Hash(graph.aignum, 100000037).outcome)
        self.history_ac = [-1 for i in range(6)]
        self.history_ef = [2 for i in range(6)]
        obs += self.history_ac + self.history_ef
        self.seq_length = 0
        return np.array(obs)

    def write(self, output=None):
        output = self.filename if output is None else output
        # print(output)
        self.abc.stdin.write('write_blif {}\n'.format(output))
        self.abc.stdin.flush()
        while True:
            try:
                file = open(output)
            except OSError:
                continue
            break
        time.sleep(1)

    def render(self):
        return self.step(random.randint(0, 9))
        # def render(self)

    #    print("no view available\n")

    def __run(self, cmd):
        self.abc.stdin.write('{}; print_stats\n'.format(cmd))
        self.abc.stdin.flush()
        line = self.abc.stdout.readline()
        while 'lev' not in line:
            self.abc.stdin.flush()
            line = self.abc.stdout.readline()
        # print(line)
        tokens = regex.compile('[ =\n\r]+').split(line)
        size_index = tokens.index('and') + 1
        size = int(tokens[size_index])
        depth_index = tokens.index('lev') + 1
        depth = int(tokens[depth_index])
        return [size, depth]

    def __skip_until_echo(self):
        line = self.abc.stdout.readlines()
        while regex.compile('^abc.*>').match(str(line)) == None:
            #    print(line)
            self.abc.stdin.flush()
            line = self.abc.stdout.readline()
        if ((regex.compile('Generic file reader requires a known file').match(line) == True) or (
                regex.compile('Cannot open').match(line) == True)):
            print('file open failed\n')
            return 1
        return 0


ACTION_LIB = {
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
