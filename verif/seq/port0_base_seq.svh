
class port0_base_seq extends uvm_sequence #(port0_transaction);
  `uvm_object_utils(port0_base_seq)

  port0_seq_cfg_obj seq_cfg;

  function new(string name ="");
    super.new(name);
  endfunction

  task pre_body();
	/*
    req=port0_transaction::type_id::create("req");
    start_item(req);
    assert(req.randomize());//with {req.a>req.b;});
    finish_item(req);
    get_response(rsp);
	*/
  endtask

endclass
