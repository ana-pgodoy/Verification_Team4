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
	bit	[ADDR_WIDTH_1-1:0] addr1;
	//Output
	logic [DATA_WIDTH_1:0] dout1;
  

endinterface
