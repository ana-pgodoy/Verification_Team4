class port1_read_cs1_test extends ram_base_test; // specific test
	`uvm_component_utils(port1_read_cs1_test)

	port1_read_10_seq_cs1  read_seq;
   port1_seq_cfg_obj       seq_cfg;

	function new(string name, uvm_component parent);
		super.new(name,parent);
	endfunction

	task run_phase(uvm_phase phase);
		phase.raise_objection(this);

      seq_cfg = port1_seq_cfg_obj::type_id::create("seq_cfg");

		#1us;

		repeat(10) begin
         seq_cfg.randomize();
			//seq_cfg.addr1 = ;
         uvm_config_db#(port1_seq_cfg_obj)::set(this,"ram_env.agent_1","seq_cfg",seq_cfg);
			read_seq = port1_read_10_seq_cs1::type_id::create("fast_read_seq");
			read_seq.start(ram_env.agent_1.sequencer);
		end

		#1us;

		phase.drop_objection(this);
	endtask

endclass