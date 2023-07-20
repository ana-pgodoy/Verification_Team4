class port1_read_10_seq_cs1 extends port1_base_seq
   `uvm_object_utils(port1_read_10_seq_cs1)

   function new(string name = "");
      super.new(name);
   endfunction

   task body();
      req = ::type_id::create("req");
      start_item(req);
      req.randomize() with 

endclass
