package ram_seq_pkg;
	import uvm_pkg::*;
	import agent_port0_pkg::*;
	import agent_port1_pkg::*;
	`include "uvm_macros.svh"
	`include "port0_seq_cfg_obj.svh"
	  `include "port1_seq_cfg_obj.svh"
	  `include "port0_base_seq.svh"
	  `include "port1_base_seq.svh"
	  `include "port0_read_10_seq_cs0.svh"
	  `include "port0_read_10_seq_cs0_OFF.svh"
	  `include "port0_read_10_seq_cs0_fast.svh"
	  `include "port0_read_10_seq_cs0_slow.svh"
	  `include "port0_rewrite_10_seq.svh"
	  `include "port0_write_10_seq_we.svh"
	  `include "port1_read_10_seq_cs1_off.svh"
	  `include "port1_read_10_seq_cs1.svh"
	 `include "port1_fast_read_10_seq.svh"
	  `include "port1_slow_read_10_seq.svh"
  
endpackage
