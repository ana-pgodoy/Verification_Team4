/*
Atribute: testbench top
Author: Cristian Eduardo Gomez de la Torre
Date: 05/07/23
Version:01
File name: tb.sv
*/
	import uvm_pkg::*;
	`include "uvm_macros.svh"
	import ram_test_pkg::*;

module tb;
  
	//clock variable//
	bit clk0;
	bit clk1;
  
  // interfaces instances //
  port0_intf intf0(clk0);
  port1_intf intf1(clk1);
  
  sky130_sram_1kbyte_1rw1r_32x256_8 DUT
  	 (.clk0(intf0.clk0),
      .csb0(intf0.cs0),		
      .web0(intf0.we0),
      .wmask0(intf0.wmask0),
      .addr0(intf0.addr0),
      .din0(intf0.din0),
      .dout0(intf0.dout0),
      .clk1(intf1.clk1),
      .csb1(intf1.cs1),		
      .addr1(intf1.addr1),
      .dout1(intf1.dout1));
  
  // generate clk signal //
  always clk0 = #5 ~clk0;
  always clk1 = #5 ~clk1;

	initial begin 
	run_test();
	end
  // Connecting TLM ports and sending interfaces to transactors (monitors and drivers) //
	initial begin
    uvm_config_db#(virtual port0_intf)::set(null,"*","port0_intf",intf0);
    uvm_config_db#(virtual port1_intf)::set(null,"*","port1_intf",intf1);

    //test =new("ram_base_test", null);
	end
`ifdef XCELIUM
	initial begin
		$shm_open("shm_db");
		$shm_probe("ASMTR");
	end
`endif 

endmodule
