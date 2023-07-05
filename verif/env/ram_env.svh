/*
Atribute: enviroment
Author: Ana Paula Godoy Monroy
Date: 03/07/2023
Version: 01
File name: ram_env.svh
*/
class ram_env extends uvm_env;
	`uvm_component_utils(ram_env)
	
	port0_agent agent_0;
	port1_agent agent_1;
	
  function new (string name, uvm_component parent);
    super.new(name, parent);
  endfunction 
  
   virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), "Build Phase", UVM_MEDIUM)
	agent_0=port0_agent::type_id::create("agent_0",this);
	agent_1=port1_agent::type_id::create("agent_1",this);
  endfunction
  
endclass : ram_env
