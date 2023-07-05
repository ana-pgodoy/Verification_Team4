/*
Author: Paulina Vianney Núñez Luna
Date: 05/07/2023
Version:01
File name: port1_intf.svh
*/
interface port1_intf(input logic clk1);
  	//Inputs
	bit        cs1;		
	bit        we1;
  bit	[10:0] addr1;
  	
	//Output
  logic [32:0] dout1;
  

endinterface
