/*
Atribute: port1_read_10_seq_cs1
Author: Paulina Vianney Núñez Luna
Date: 20/07/2023
Version: 1
File name: port1_read_10_seq_cs1.svh
*/

class port1_read_10_seq_cs1 extends port1_base_seq;
      `uvm_object_utils(port1_read_10_seq_cs1)
	
      function new(string name ="port1_read_10_seq_cs1");
		          super.new(name);
	    endfunction
	
	
	task body();
		    req=port1_transaction::type_id::create("req");
		
		    for (int i = 0; i < 10; i++) begin
	
             //	assert(req.randomize() with {req.cs1 ==0; req.we0==1; });
              req.randomize() with {req.cs1 ==0; req.we0==1;};
        			start_item(req);
        			finish_item(req);
        			get_response(rsp);
			    //	#5; 
        			
		end
	endtask
endclass
