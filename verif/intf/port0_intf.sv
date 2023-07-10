/*
Atribute: port0_intf
Author: Ana Paula Godoy Monroy
Date: 04/07/2023
Version:01
File name: port0_intf.sv
*/

import ram_defines_pkg::*;

interface port0_intf(input logic clk0);
  	//Inputs
	bit      	    		    cs0;		
	bit         			    we0;
	bit   	[`WMASK_WIDTH-1:0]  wmask0;
	bit		[`ADDR_WIDTH-1:0] 	addr0;
	bit		[`DATA_WIDTH-1:0]   din0;
	//Output
	logic   [`DATA_WIDTH-1:0]   dout0;
  

endinterface
