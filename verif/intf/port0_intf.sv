/*
Atribute: port0_intf
Author: Ana Paula Godoy Monroy
Date: 04/07/2023
Version:01
File name: port0_intf.sv
*/
interface port0_intf(input logic clk0);
  	//Inputs
	bit            cs0;		
	bit            we0;
	bit   	[3:0]  wmask0;
	bit	[10:0] addr0;
	bit	[32:0] din0;
	//Output
	logic [32:0] dout0;
  

endinterface
