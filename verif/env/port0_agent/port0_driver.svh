/*

Disenador: Benjamin Gonzalez Alvarado
Modulo: port0_driver
Compania: Cinvestav
Contacto: a.g.ben.min@gmail.com

*/



class port0_driver extends uvm_driver#(port0_transaction);
	`uvm_component_utils(port0_driver)

	virtual port0_intf port0_vintf;

	function new(input string name, uvm_component parent);
		super.new(name,parent);
	endfunction
	
	
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		`uvm_info(get_name(), "build phase", UVM_NONE)
		
		if(!uvm_config_db#(virtual port0_intf)::get(this,"","port0_intf",port0_vintf))
			`uvm_fatal(get_name(),"config db failed")
	endfunction
	
	virtual task run_phase(uvm_phase phase);
		`uvm_info(get_name(), "Run Phase", UVM_NONE)
		
		//txn = port0_transaction::type_id::create("txn");
		
		forever begin
			//req is a native variable to uvm driver
			@(posedge port0_vintf.clk0)
			begin
				seq_item_port.get_next_item(req);
				port0_vintf.cs0<=req.cs0;
				port0_vintf.we0<=req.we0;
				port0_vintf.wmask0<=req.wmask0;
				port0_vintf.addr0<=req.addr0;
				port0_vintf.din0<=req.din0;
			end
		seq_item_port.item_done();
		end
		
		
	endtask

endclass
