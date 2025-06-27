from gym.envs.registration import register

register(
    id='netlist-v0',
    entry_point='gym_netlist.envs:NetlistEnv',
)
