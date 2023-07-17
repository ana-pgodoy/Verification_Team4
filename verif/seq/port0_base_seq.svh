class port0_base_seq extends uvm_sequence #(port0_transaction);
  `uvm_object_utils(port0_base_seq)

  function new(string name ="");
    super.new(name);
  endfunction

  task body();
    req=port0_transaction::type_id::create("req");
    start_item(req);
    assert(req.randomize());//with {req.a>req.b;});
    finish_item(req);
    get_response(rsp);
  endtask

endclass
