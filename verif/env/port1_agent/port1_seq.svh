class port1_sequencer extends uvm_sequencer#(port1_transaction);
	`uvm_component_utils(port1_sequencer)

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
	
endclass
