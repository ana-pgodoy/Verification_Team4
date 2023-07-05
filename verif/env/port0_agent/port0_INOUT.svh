/*

Disenador: Benjamin Gonzalez Alvarado
Modulo: port0_INOUT
Compania: Cinvestav
Contacto: a.g.ben.min@gmail.com

*/


class port0_INOUT extends uvm_sequence_item;

	logic            			cs0;		
	logic            			we0;
	logic   [WMASK_WIDTH-1:0]  	wmask0;
	logic	[ADDRESS_WIDTH-1:0] addr0;
	logic	[DATA_WIDTH-1:0] 	din0;
	//Output
	logic 	[DATA_WIDTH-1:0] 	dout0;
	
	
	
endclass