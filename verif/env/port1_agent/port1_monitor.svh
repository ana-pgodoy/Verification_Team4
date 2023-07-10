/*
Atribute: port1_monitor
Author: Paulina Vianney Núñez Luna
Date: 4/07/2023
File name: port1_monitor
*/

class port1_monitor extends uvm_monitor;
  `uvm_component_utils(port1_monitor)
	
	virtual port1_intf intf1; // SystemVerilog virtual interface
	
  	uvm_analysis_port #(port1_transaction) analysis_port1;
  function new (string name, uvm_component parent);
    super.new(name, parent);
    analysis_port1=new("analysis_port1",this);
  endfunction 
	
virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  if(!uvm_config_db #(virtual
  port1_intf)::get(this,"","port1_intf", intf1))
		  `uvm_fatal(get_name(),"Failed to get interface")
endfunction
		  
  virtual task run_phase(uvm_phase phase);
      port1_transaction data;
      data = port1_transaction::type_id::create("data");
  	  @(posedge intf1.clk1);
	    data.cs1 = intf1.cs1;
		data.we1 = intf1.we1;
		data.addr1 = intf1.addr1;
	 	//data.din1 = intf1.din1;
	  	data.dout1 = intf1.dout1;
		analysis_port1.write(data);
   endtask  
endclass : port1_monitor
