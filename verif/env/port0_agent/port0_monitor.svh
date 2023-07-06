/*
Atribute: port0_monitor
Author: Ana Paula Godoy Monroy
Date: 29/06/2023
Version: 01
File name: port0_monitor.sv
*/

virtual class port0_monitor extends uvm_monitor;
	`uvm_component_utils(port0_monitor)
	
	virtual port0_intf intf0; // SystemVerilog virtual interface
	
	uvm_analysis_port #(port0_transaction) analysis_port0;
  function new (string name, uvm_component parent);
    super.new(name, parent);
	analysis_port0=new("analysis_port0",this);
  endfunction 
	
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
	  if(!uvm_config_db #(virtual port0_intf)::get(this,"","port0_intf", intf0))
		  `uvm_fatal(get_name(),"Failed to get interface")
    endfunction
		  
  virtual task run_phase(uvm_phase phase);
		`uvm_info(get_name(), "Run Phase", UVM_MEDIUM)
      port0_transaction data;
      data = port0_transaction::type_id::create("data");
      	@(posedge intf0.clk);
	        data.cs0 = intf0.cs0;
		data.we0 = intf0.we0;
		data.wmask0= intf0.wmask0;
		data.addr0 = intf0.addr0;
	 	data.din0 = intf0.din0;
	  	data.dout0 = intf0.dout0;
		analysis_port0.write(data);
   endtask
  
endclass : port0_monitor
