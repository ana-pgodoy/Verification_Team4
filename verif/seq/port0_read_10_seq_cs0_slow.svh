/*

Disenador: Benjamin Gonzalez Alvarado
Modulo: port0_read_10_seq_cs0_slow
Compania: Cinvestav
Contacto: a.g.ben.min@gmail.com

*/
class port0_read_10_seq_cs0_slow extends port0_base_seq;
	`uvm_object_utils(port0_read_10_seq_cs0_slow)
	
	function new(string name ="port0_read_10_seq_cs0_slow");
		super.new(name);
	endfunction
	
	
	task body();
		req=port0_transaction::type_id::create("req");
		
		for (int i = 0; i < 10; i++) begin
	
//			assert(req.randomize() with {req.cs0 ==0; req.we0==1; });
			req.randomize() with {req.cs0 ==0; req.we0==1;};
			start_item(req);
			finish_item(req);
			get_response(rsp);

		end
	endtask
	
	
endclass
