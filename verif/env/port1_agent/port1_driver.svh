/*
Atribute: port1_driver
Author: Paulina Vianney Núñez Luna
Date: 4/07/2023
File name: port1_driver
*/

class port1_driver extends uvm_driver#(port1_transaction);
  `uvm_component_utils(port1_driver)

	virtual port1_intf port1_vintf;

	function new(input string name, uvm_component parent);
		super.new(name,parent);
	endfunction
	
	
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		`uvm_info(get_name(), "build phase", UVM_NONE)

		if(!uvm_config_db#(virtual port1_intf)::get(this,"","port1_intf",port1_vintf))
			`uvm_fatal(get_name(),"config db failed")
	endfunction
	
	virtual task run_phase(uvm_phase phase);
		`uvm_info(get_name(), "Run Phase", UVM_NONE)
		
		forever begin
			@(posedge port1_vintf.clk1)
			begin
				seq_item_port.get_next_item(req);
				port1_vintf.cs1<=req.cs1;
				port1_vintf.addr1<=req.addr1;
			end
		seq_item_port.item_done();
		end
		
		
	endtask

endclass
