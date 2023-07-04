class port1_sequencer extends uvm_sequencer#(uvm_sequence_item);
	`uvm_component_utils(port1_sequencer)

  //driver.seq_item_port.connect(sequencer.seq_item_export);

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
	
endclass
