/*
Atribute: port1_driver
Author: Paulina Vianney Núñez Luna
Date: 4/07/2023
File name: port1_driver
*/

//MISDATOS nombre filler mientras tanto
class port1_driver extends uvm_driver#(MISDATOS)
  `uvm_component_utils(port1_driver)

	function new(input string name, uvm_component parent);
      
		super.new(name,parent);
      
	endfunction
	

endclass
