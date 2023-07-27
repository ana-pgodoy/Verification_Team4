class port0_read_cs0_off_test extends ram_base_test; // specific test
	`uvm_component_utils(port0_read_cs0_off_test)

	port0_read_10_seq_cs0_OFF  read_seq_off;
  port1_seq_cfg_obj          seq_cfg;

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
			read_seq_off = port0_read_10_seq_cs0_OFF::type_id::create("read_seq_off");
      read_seq_off.start(enviroment.agent_0.sequencer);
		end

		#1us;

		phase.drop_objection(this);
	endtask

endclass
