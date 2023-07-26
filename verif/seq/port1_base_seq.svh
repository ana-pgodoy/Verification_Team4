/*
Atribute: port1_base_seq
Author: Cristian Eduardo Gomez de la Torre
Date: 17/07/2023
Version: 1
File name: port1_base_seq.svh
*/

class port1_base_seq extends uvm_sequence #(port1_transaction);
  `uvm_object_utils(port1_base_seq)
  
    port1_seq_cfg_obj port1_cfg;

  function new(string name ="port1_base_seq");
    super.new(name);
  endfunction

 task pre_body();

    if(!uvm_config_db#(port1_seq_cfg_obj)::get(null,"ram_base_test.ram_env.agent_port1","port1_cfg",port1_cfg))
			`uvm_fatal(get_name(), "Failed to get sequence configuration object")
 endtask
  /*task body();
    req=port1_transaction::type_id::create("req");
    start_item(req);
    assert(req.randomize());//with {req.a>req.b;});
    finish_item(req);
    //get_response(rsp);
  endtask*/
endclass
