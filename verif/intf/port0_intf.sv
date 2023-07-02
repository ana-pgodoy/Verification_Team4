/*
Atribute: port0_intf
Author: Ana Paula Godoy Monroy
Date: 
Version:
File name: port0_intf.sv
*/
interface port0_intf(input logic clk0);
  
	logic               	 cs0,		
	logic               	 we0,
	logic [3:0]				 wmask0,
	logic [10:0] addr0,
	logic [32:0] din0,
	logic [32:0] dout0,
  

endinterface