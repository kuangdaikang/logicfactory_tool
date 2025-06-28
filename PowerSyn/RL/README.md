usage:(需安装好anaconda3和yosys)
    cd logicfactory_tool/PowerSyn/RL
    make
    conda activate rlgym
    cd logicfactory_tool/PowerSyn/RL/sources/PowerAwareSynthesis/network
    python train.py (--arg,详见logicfactory_tool/PowerSyn/RL/sources/PowerAwareSynthesis/network/arguments.py)
    python test.py (--arg,详见logicfactory_tool/PowerSyn/RL/sources/PowerAwareSynthesis/network/arguments.py)

