/*
Atribute: port1_read_10_seq_cs1_off
Author: Paulina Vianney Núñez Luna
Date: 20/07/2023
Version: 1
File name: port1_read_10_seq_cs1_off.svh
*/

class port1_read_10_seq_cs1_OFF extends port1_base_seq;
   `uvm_object_utils(port1_read_10_seq_cs1_OFF)
	
   function new(string name ="port1_read_10_seq_cs1_off");
		super.new(name);
	endfunction
	
	
	task body();
		req=port1_transaction::type_id::create("req");
		
		for (int i = 0; i < 10; i++) begin
	
         //assert(req.randomize() with {req.cs1 ==1;req.we1==1; });
         req.randomize() with {req.cs1 ==1;req.we1==1;};
			start_item(req);
			finish_item(req);
			get_response(rsp);

		end
	endtask
	
	
endclass
