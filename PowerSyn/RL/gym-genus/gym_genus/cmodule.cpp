#include <string>
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include <pybind11/complex.h>
#include <pybind11/functional.h>
#include <pybind11/chrono.h>
#include "../../netlist/netlist.h"


namespace py = pybind11;

PYBIND11_MODULE(cmodule,m){
    m.def("get_feature", &PASyn::get_feature);
    m.def("read_netlist", &PASyn::read_blif);
    m.def("read_liberty", PASyn::read_liberty);
    m.def("get_feature_basic", &PASyn::get_feature_basic);
    m.def("get_feature_glitch", &PASyn::get_feature_glitch);
    m.def("technology_mapping", &PASyn::technology_mapping_api);
    m.def("get_power", &PASyn::calculate_power_api);
}
