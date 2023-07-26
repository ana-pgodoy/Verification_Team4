package ram_test_pkg;
	import uvm_pkg::*;
	import ram_env_pkg::*;	
	import ram_seq_pkg::*;	
	`include "uvm_macros.svh"
	
	`include "ram_base_test.svh"	
	`include "port1_fast_read_test.svh"
	`include "port1_slow_read_test.svh"
	`include "port1_read_cs1_test.svh"
endpackage
