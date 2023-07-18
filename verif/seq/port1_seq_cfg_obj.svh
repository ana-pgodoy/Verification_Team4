import ram_defines_pkg::*;

class port1_seq_cfg_obj extends uvm_object;
	bit      	    		    cs1;
  bit		[`ADDR_WIDTH-1:0] 	addr1;
	
  `uvm_object_utils_begin(port1_seq_cfg_obj)
    `uvm_field_int(cs1,UVM_DEFAULT)
    `uvm_field_int(addr1,UVM_DEFAULT)
	`uvm_object_utils_end
	
  function new (string name="");
    super.new(name);
  endfunction
 
endclass

