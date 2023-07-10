/*

Disenador: Benjamin Gonzalez Alvarado
Modulo: port0_sqr
Compania: Cinvestav
Contacto: a.g.ben.min@gmail.com

*/



class port0_sqr extends uvm_sequencer#(port0_transaction);
	`uvm_sequencer_utils(port0_sqr)

	function new(input string name, uvm_component parent);
		super.new(name,parent);
	endfunction
	
	virtual task run_phase(uvm_phase phase);
		`uvm_info(get_name(), "Run Phase", UVM_NONE)
	endtask
	

endclass
