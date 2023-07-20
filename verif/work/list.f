# rtl
../../rtl/sky130_sram_1kbyte_1rw1r_32x256_8.sv

#verification
    +incdir+../defines
    ../defines/ram_defines_pkg.sv
    ../intf/port0_intf.sv
    ../intf/port1_intf.sv
    +incdir+../refmodel
    +incdir+../env/port0_agent
    ../env/port0_agent/agent_port0_pkg.sv
    +incdir+../env/port1_agent
    ../env/port1_agent/agent_port1_pkg.sv
    +incdir+../env
    ../env/ram_env_pkg.sv
    +incdir+../seq
    ../seq/ram_seq_pkg.sv
    +incdir+../test
    ../test/ram_test_pkg.sv
    ../tb/tb.sv


