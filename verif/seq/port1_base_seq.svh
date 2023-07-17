class port1_base_seq extends uvm_sequence #(port1_transaction);
  `uvm_object_utils(port1_base_seq)

  function new(string name ="");
    super.new(name);
  endfunction

  task body();
    req=port1_transaction::type_id::create("req");
    start_item(req);
    assert(req.randomize());//with {req.a>req.b;});
    finish_item(req);
    get_response(rsp);
  endtask

endclass
