/*
Atribute: testbench top
Author: 
Date: 
Version:
File name: 
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

module tb;
  //clock and reset variables//
	bit clk;
	bit rstn;
  
  // interfaces instances //
  port0_intf intf0(clk0);
  port1_intf intf1(clk1);
  
  ram_proj DUT
  	 (.clk0(intf0.clk0),
      .cs0(intf0.cs0),		
      .we0(intf0.we0),
      .wmask0(intf0.wmask0),
      .addr0(intf0.addr0),
      .din0(intf0.din0),
      .dout0(intf0.dout0),
      .clk1(intf1.clk1),
      .cs1(intf1.cs1),		
      .addr1(intf1.addr1),
      .dout1(intf1.dout1));
  
  // generate clk and rstn signals //
  always clk = #5 ~clk;

  initial begin
		rstn = '0;
		#50;
		rstn = 'b1;
	end

  // Connecting TLM ports and sending interfaces to transactors (monitors and drivers) //
	initial begin
    uvm_config_db#(virtual port0_intf)::set(null,"*","port0_intf",intf0);
    uvm_config_db#(virtual port1_intf)::set(null,"*","port1_intf",intf1);

    
	end
  
  initial begin 
    run_test();
  end
 
endmodule
