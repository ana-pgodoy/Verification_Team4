/*
Atribute: agent_port1
Author: Paulina Vianney Núñez Luna
Date: 4/07/2023
File name: agent_port1
*/

class agent_port1 extends uvm_agent;
  `uvm_component_utils(agent_port1);
	//scoreboard
 	port1_scb scoreboard;
	//driver
  	port1_driver driver;
	//monitor
 	port1_monitor monitor;
	//subscriber
  	port1_subs subscriber;
	//sequencer
  	port1_sequencer #(port1_transaction)sequencer;

  	uvm_analysis_port #(port1_transaction) analysis_port1;
	
	function new(input string name, uvm_component parent);
		super.new(name,parent);
	    analysis_port1=new("analysis_port1",this);
	endfunction
	
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
      
		monitor=port1_monitor::type_id::create("monitor",this);
		scoreboard=port1_scb::type_id::create("scoreboard",this);
		driver=port1_driver::type_id::create("driver",this);
		sequencer=port1_sequencer::type_id::create("sequencer",this);
		subscriber = port1_subs::type_id::create("subscriber",this);
	endfunction
	
	virtual function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		`uvm_info(get_name(), "Connect Phase", UVM_NONE)
     	 //built in
		driver.seq_item_port.connect(sequencer.seq_item_export);
      	monitor.analysis_port1.connect(scoreboard.analysis_export1);
		//built in 
		monitor.analysis_port1.connect(subscriber.analysis_export);

      	monitor.analysis_port1.connect(analysis_port1);
	endfunction
  
	virtual task run_phase(uvm_phase phase);
		`uvm_info(get_name(), "Run Phase", UVM_NONE)
	endtask
	
endclass
