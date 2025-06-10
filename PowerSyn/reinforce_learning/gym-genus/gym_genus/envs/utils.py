import gym_genus.envs.cmodule as cmodule
import regex
import os

def get_feature(netlist, mode="normal"):
    if mode == "normal":
        return cmodule.get_feature(netlist)
    elif mode == "glitch":
        return cmodule.get_feature_glitch(netlist)
    elif mode == 'basic':
        return cmodule.get_feature_basic(netlist)
    else:
        raise NotImplementedError


# Get power detail from innovus power report
'''
def get_power(file_name):
    total_power = 0.0
    internal_power = 0.0
    switch_power = 0.0
    leakage = 0.0
    with open(file_name) as file:
        for line in file.readlines():
            if line.find("Subtotal") != -1:
                line = line.split()
                leakage = float(line[1])
                internal_power = float(line[2])
                switch_power = float(line[3])
                total_power = float(line[4])
            else:
                continue
        file.close()

    return total_power, internal_power, switch_power, leakage
'''


def technology_mapping(input_file, technology, output_file):
    print(os.getcwd())
    cmodule.technolpgy_mapping(input_file, technology, output_file)


def get_power(file_name, technology_file):
    return cmodule.get_power(file_name, technology_file, 1)


def generate_yosys_script(in_file, out_file, liberty, script_file, trace_dir=None, num_iter=0):
    with open(script_file, 'w') as file:
        file.write("read_verilog " + in_file + "\n")
        file.write("techmap" + "\n")
        file.write("abc -liberty " + liberty + "\n")
        # file.write("abc -liberty " + liberty + " -fast" + "\n")
        file.write("clean\n")
        file.write("write_verilog " + out_file + "\n")
        if trace_dir is not None:
            file.write("write_blif " + out_file + '_' + str(num_iter) + "\n")
        file.close()
        return


def genus_run_command(genus, cmd):
    genus.stdin.write(cmd)
    genus.stdin.flush()
    trace_line = genus.stdout.readline()
    if trace_line.split() != [] and trace_line.split()[0].find('Error') != -1:
        return 1
    while 'legacy_genus:/>' not in trace_line:
        genus.stdin.flush()
        line = genus.stdout.readline()
        trace_line += line
        # print(line, end='')
        if line.split() != [] and trace_line.split()[0].find('Error') != -1:
            return 1
        assert trace_line.find('Abnormal exit.') == -1
    return 0


def genus_wait_till_respond(genus):
    line = genus.stdout.readline()
    trace_line = line
    while 'legacy_genus:/>' not in trace_line:
        # print(line, end='')
        genus.stdin.flush()
        line += genus.stdout.readline()
        trace_line += line
        assert trace_line.find('Abnormal exit.') == -1
    return


def genus_remove_design(genus):
    assert genus_run_command(genus, "rm designs/* \n") == 0
    return


def genus_read_library(genus, lib_file):
    assert genus_run_command(genus, "set_attribute library " + lib_file + "\n") == 0
    return


def genus_elaborate(genus, design):
    assert genus_run_command(genus, "elaborate " + design + "\n") == 0


def genus_read_hdl(genus, file):
    assert genus_run_command(genus, "read_hdl " + file + "\n") == 0


def genus_report_power(genus, power_file):
    assert genus_run_command(genus, "report power > " + power_file + "\n") == 0
