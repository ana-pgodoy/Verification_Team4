/*
Atribute: port0_write_seq_we_test
Author: Cristian Eduardo Gomez de la Torre
Date: 27/07/2023
Version: 1
File name: port0_write_seq_we_test.svh
*/

class port0_write_seq_we_test extends ram_base_test; // specific test
	`uvm_component_utils(port0_write_seq_we_test)

	port0_write_10_seq_we  write_seq_we_port0;
  port0_seq_cfg_obj      seq_cfg;

	function new(string name, uvm_component parent);
		super.new(name,parent);
	endfunction

	task run_phase(uvm_phase phase);
		phase.raise_objection(this);

      		seq_cfg = port0_seq_cfg_obj::type_id::create("seq_cfg");

		#1us;

		repeat(10) begin
        		seq_cfg.randomize();
			//seq_cfg.addr1 = ;
      uvm_config_db#(port0_seq_cfg_obj)::set(this,"ram_env.agent_0","seq_cfg",seq_cfg);
			write_seq_we_port0 = port0_write_10_seq_we::type_id::create("write_seq_we_port0");
      write_seq_we_port0.start(enviroment.agent_0.sequencer);
		end

		#1us;

		phase.drop_objection(this);
	endtask

endclass
