#**************************************************/#* Script for Cadence RTL Compiler synthesis      */
#*                                                */
#* To run: rc < rc.tcl                            */
#*                                                */
#* Author: Ivan Castellanos, OSU                  */
#* ivan.castellanos@okstate.edu                   */
#**************************************************/

# All HDL files, separated by spaces
set hdl_files {/home/zousunan/nas/PowerAwareSynthesis/gym-genus/gym_genus/genus_script/PAS_map_adder}

# The Top-level Module, change example multiplyadd
set DESIGN PAS_map_adder

#**************************************************/
# NO further changes past this point
set_attribute library gscl45nm.lib
read_hdl ${hdl_files}

elaborate $DESIGN

report power  > power.rep
quit
