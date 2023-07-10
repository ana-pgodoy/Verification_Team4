/*
Atribute: transaction
Author: Ana Paula Godoy Monroy, Benjamin Gonzalez Alvarado
Date: 05/07/2023
Version:01
File name: port0_transaction.svh
*/
import ram_defines_pkg::*;
class port0_transaction extends uvm_sequence_item;
	//Inputs
	rand bit         	   		 	cs0;		
	rand bit      	      			we0;
	rand bit 	[`WMASK_WIDTH-1:0]  wmask0;
	rand bit	[`ADDR_WIDTH-1:0] 	addr0;
	rand bit	[`DATA_WIDTH-1:0] 	din0;
	//Output
	logic 		[`DATA_WIDTH-1:0] 	dout0;
	
  function new (string inst = "");
    super.new(inst);
  endfunction 

	//Register class data into factory
	`uvm_object_utils_begin(port0_transaction)
		`uvm_field_int(cs0,UVM_ALL_ON)
		`uvm_field_int(we0,UVM_ALL_ON)
		`uvm_field_int(wmask0,UVM_ALL_ON)
		`uvm_field_int(addr0,UVM_ALL_ON)
		`uvm_field_int(din0,UVM_ALL_ON)
		`uvm_field_int(dout0,UVM_ALL_ON)
	`uvm_object_utils_end

endclass
