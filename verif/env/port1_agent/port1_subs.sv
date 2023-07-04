class port1_subs extends uvm_subscriber #(uvm_sequence_item);
  `uvm_component_utils(port1_subs)

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

	function void write(uvm_sequence_item t);
		`uvm_info(get_name(),"conv_subscriber",UVM_MEDIUM)
	endfunction

endclass
