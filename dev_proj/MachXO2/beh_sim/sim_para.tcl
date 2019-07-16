lappend auto_path "/usr/local/diamond/3.10_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {beh_sim}
set ::bali::simulation::Para(PROJECTPATH) {/home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/dev_proj/MachXO2}
set ::bali::simulation::Para(FILELIST) {"/home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/prng.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top_tb.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {0}
set ::bali::simulation::Para(RUNSIMULATION)  {0}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ModelSim_Run
