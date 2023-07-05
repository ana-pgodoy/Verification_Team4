/*

Disenador: Benjamin Gonzalez Alvarado
Modulo: port0_driver
Compania: Cinvestav
Contacto: a.g.ben.min@gmail.com

*/


//MISDATOS nombre filler mientras tanto
class port0_driver extends uvm_driver#(MISDATOS)
	`uvm_component_utils(port0_driver)

	virtual port0_intf port0_vintf;

	function new(input string name, uvm_component parent);
		super.new(name,parent);
	endfunction
	
	
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		`uvm_info(get_name(), "build phase", UVM_NONE)
	endfunction
	
	virtual task run_phase(uvm_phase phase);
		`uvm_info(get_name(), "Run Phase", UVM_NONE)
	endtask

endclass