
class port0_base_seq extends uvm_sequence #(port0_transaction);
  `uvm_object_utils(port0_base_seq)
    
      port0_seq_cfg_obj port0_cfg;

	function new(string name ="port0_base_seq");
  		super.new(name);
 	endfunction
    
   	 task pre_body();
	 	if(!uvm_config_db#(port0_seq_cfg_obj)::get(null,"ram_base_test.enviroment.agent_0","port0_cfg",port0_cfg))
			`uvm_fatal(get_name(), "Failed to get sequence configuration object")
	endtask
endclass
