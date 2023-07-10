/*
Atribute: Base test
Author: 
Date: 03/07/2023
Version: 01
File name: ram_base_test.svh
*/
class ram_base_test extends uvm_test;
	`uvm_component_utils(ram_base_test )

	ram_env enviroment;
	
  function new (string name, uvm_component parent);
    super.new(name, parent);
  endfunction 
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), "Build Phase", UVM_MEDIUM)
	enviroment=ram_env::type_id::create("enviroment",this);
  endfunction
  
	virtual function void end_of_elaboration_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), "PRINT TOPOLOGY", UVM_MEDIUM)
  	uvm_top.print_topology();
	endfunction
  
endclass : ram_base_test
