/*

Disenador: Benjamin Gonzalez Alvarado
Modulo: port0_INOUT
Compania: Cinvestav
Contacto: a.g.ben.min@gmail.com

*/


class port0_INOUT extends uvm_sequence_item;

	bit         	   			cs0;		
	bit      	      			we0;
	bit 	[WMASK_WIDTH-1:0]  	wmask0;
	bit		[ADDRESS_WIDTH-1:0] addr0;
	bit		[DATA_WIDTH-1:0] 	din0;
	//Output
	logic 	[DATA_WIDTH-1:0] 	dout0;
	
	
	function new(string name = "port0_INOUT");
		super.new(name);
	endfunction
	
	
	
endclass