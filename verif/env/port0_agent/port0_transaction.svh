/*
Atribute: transaction
Author: Ana Paula Godoy Monroy
Date: 05/07/2023
Version:01
File name: port0_transaction.svh
*/

class port0_transaction extends uvm_sequence_item;
	//Inputs
	rand bit           cs0;		
	rand bit           we0;
	rand bit   	[3:0]  wmask0;
	rand bit	[10:0] addr0;
	rand bit	[32:0] din0;
	//Output
	logic 		[32:0] dout0;
	
  function new (string inst = "");
    super.new(inst);
  endfunction 

	//Register class data into factory
	`uvm_object_utils_begin(transaction)
		`uvm_field_int(cs0,UVM_DEFAULT)
		`uvm_field_int(we0,UVM_DEFAULT)
		`uvm_field_int(wmask0,UVM_DEFAULT)
		`uvm_field_int(addr0,UVM_DEFAULT)
		`uvm_field_int(din0,UVM_DEFAULT)
		`uvm_field_int(dout0,UVM_DEFAULT)
	`uvm_object_utils_end

endclass