#include "../../share/netlist.h"

int main() {
    std::string input = "/rshome/daikang.kuang/logicfactory_tool/PowerSyn/mapping/experiment/input.blif";
    std::string technology_input = "/rshome/daikang.kuang/logicfactory_tool/PowerSyn/mapping/experiment/technology.lib";
    std::string output = "/rshome/daikang.kuang/logicfactory_tool/PowerSyn/mapping/experiment/output.v";

    PASyn::technology_mapping_api(input, technology_input, output);

    return 0;
}