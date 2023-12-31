class  port0_write_10_seq_we extends port0_base_seq;
  `uvm_object_utils(port0_write_10_seq_we)

  function new(string name ="port0_write_10_seq_we");
    super.new(name);
  endfunction

  task body();
   for (int i = 0; i < 10; i++) begin
    req=port0_transaction::type_id::create("req");
    start_item(req);
     req.randomize with {we0 == 1'b0;
                        cs0 ==1'b0;};
     `uvm_info(get_name(), "Generating sequence item", UVM_MEDIUM);
    finish_item(req);
    //get_response(rsp);
    end
  endtask

endclass


