/*
Atribute: port1_transaction
Author: Paulina Vianney Núñez Luna
Date: 5/07/2023
File name: port1_transaction
*/

class port1_transaction extends uvm_sequence_item;
	//Inputs
	rand bit        cs1;		
	rand bit      	we1;
        rand bit	[ADDR_WIDTH_1-1:0] addr1;
	//Output
        logic 		[DATA_WIDTH_1-1:0] dout1;
	
  function new (string inst = "");
    super.new(inst);
  endfunction 

	//Register class data into factory
  `uvm_object_utils_begin(port1_transaction)
  `uvm_field_int(cs1,UVM_ALL_ON)
  `uvm_field_int(we1,UVM_ALL_ON)
  `uvm_field_int(addr1,UVM_ALL_ON)
  `uvm_field_int(dout1,UVM_ALL_ON)
  `uvm_object_utils_end

endclass
