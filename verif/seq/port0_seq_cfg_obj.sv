/*

Disenador: Benjamin Gonzalez Alvarado
Modulo: port0_seq_cfg_obj
Compania: Cinvestav
Contacto: a.g.ben.min@gmail.com

*/

import ram_defines_pkg::*;

class port0_seq_cfg_obj extends uvm_object;
	bit      	    		    cs0;		
	bit         			    we0;
	bit   [`WMASK_WIDTH-1:0]  wmask0;
	bit		[`ADDR_WIDTH-1:0] 	addr0;
	bit		[`DATA_WIDTH-1:0]   din0;
	
	`uvm_object_utils_begin(port0_seq_cfg_obj)
		`uvm_field_int(cs0,UVM_DEFAULT)
		`uvm_field_int(we0,UVM_DEFAULT)
		`uvm_field_int(wmask0,UVM_DEFAULT)
		`uvm_field_int(addr0,UVM_DEFAULT)
		`uvm_field_int(din0,UVM_DEFAULT)
	`uvm_object_utils_end
	
  function new (string name="");
    super.new(name);
  endfunction
 
endclass
