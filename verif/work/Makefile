# Cadence Xcelium logic simulator Makefile

testname = ram_base_test
logs = ./logs
defines = XCELIUM
verb = UVM_MEDIUM

compile_switches = -f list.f -l ${logs}/comp.log +define+${defines}+ -access +rwc -timescale 1ns/1ps
compile_switches_uvm = -f list.f -uvmhome CDNS-1.2 -uvm -l ${logs}/comp.log +define+${defines}+ +UVM_TESTNAME=${testname} +UVM_VERBOSITY=${verb} -access +rwc -timescale 1ns/1ps


sim:
	xrun ${compile_switches}

sim_uvm:
	xrun ${compile_switches_uvm}

sim_uvm_gui:
	xrun ${compile_switches_uvm} -gui

sim_uvm_cov:
	xrun ${compile_switches_uvm} -cov_cgsample

simvision:
	simvision shm_db

formal:
	jaspergold ../formal/static_fv_jg.tcl -acquire_proj -no_gui

formal_gui:
	jaspergold ../formal/static_fv_jg.tcl -acquire_proj

clean:
	rm -rf xrun* waves* xcelium* logs shm_db .sim* .svm*


