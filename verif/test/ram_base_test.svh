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

	task run_phase(uvm_phase phase);
			port0_base_seq port0_base;
			port0_seq_cfg_obj port0_cfg;
			port1_base_seq port1_base;
			port1_seq_cfg_obj port1_cfg;

			phase.raise_objection(this);
			
	repeat (10) begin 
		port0_cfg =port0_seq_cfg_obj::type_id::create("port0_cfg");
		//port0_cfg.randomize();
		port1_cfg =port1_seq_cfg_obj::type_id::create("port1_cfg");
		//port1_cfg.randomize();

		uvm_config_db#(port0_seq_cfg_obj)::set(this,"ram_env.agent_port0","port0_cfg",port0_cfg);
		uvm_config_db#(port1_seq_cfg_obj)::set(this,"ram_env.agent_port1","port1_cfg",port1_cfg);

		port0_base=port0_base_seq::type_id::create("port0_base");
      
      port0_base.start(enviroment.agent_0.sequencer);
      
		port1_base =port1_base_seq::type_id::create("port1_base");
      
      port1_base.start(enviroment.agent_1.sequencer);
      
	end
		phase.drop_objection(this);
	endtask
  
endclass : ram_base_test
