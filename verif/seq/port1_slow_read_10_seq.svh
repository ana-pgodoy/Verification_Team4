/*
Atribute: port1_slow_read_10_seq
Author: Cristian Eduardo Gomez de la Torre
Date: 20/07/2023
Version: 1
File name: port1_slow_read_10_seq.svh
*/

class port1_slow_read_10_seq extends port1_base_seq;
   `uvm_object_utils(port1_slow_read_10_seq)

   function new(string name = "");
      super.new(name);
   endfunction

   task body();
     for (int i = 0; i < 9; i++) begin
        req = port1_transaction::type_id::create("req");
        req.randomize() with { req.cs1 == 0;
                               req.addr1 == seq_cfg_obj.addr1;};
        start_item(req);
        finish_item(req);
        #500ns;
        //assert(std::randomize(delay) with {delay > 0 ; delay < 100; })
        //repeat(delay) begin
        //   #10ns;
        //end
      end
   endtask
endclass
