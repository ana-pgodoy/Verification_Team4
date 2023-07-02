/*
Atribute: testbench top
Author: 
Date: 
Version:
File name: 
*/

module tb;
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
  

  initial begin 
    run_test();
  end
 
endmodule