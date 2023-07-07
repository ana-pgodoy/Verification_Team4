/*

Disenador: Benjamin Gonzalez Alvarado
Modulo: agent_port0
Compania: Cinvestav
Contacto: a.g.ben.min@gmail.com

*/

class agent_port0 extends uvm_agent
	`uvm_component_utils(agent_port0)
	//scoreboard
	port0_scb scoreboard;
	//driver
	port0_driver driver;
	//monitor
	port0_monitor monitor;
	//subscriber
	port0_subs subscriber;
	//sequencer
	
	port0_sqr sequencer;

	uvm_analysis_port #(port0_transaction) analysis_port0;
	
	function new(input string name, uvm_component parent);
		super.new(name,parent);
	        analysis_port0=new("analysis_port0",this);
	endfunction
	
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		
		monitor=port0_monitor::type_id::create("monitor",this);
		scoreboard=port0_scb::type_id::create("scoreboard",this);
		driver=port0_driver::type_id::create("driver",this);
		monitor=port0_monitor::type_id::create("monitor",this);
		sequencer=port0_sqr::type_id::create("sequencer",this);
		subscriber = port0_subs::type_id::create("subscriber",this);
		
	endfunction
	
	virtual function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		`uvm_info(get_name(), "Connect Phase", UVM_NONE)
		//built in
		driver.seq_item_port.connect(sequencer.seq_item_export);
		monitor.analysis_port0.connect(scoreboard.analysis_export0);
		//built in 
		monitor.analysis_port0.connect(subscriber.analysis_export);

		monitor.analysis_port0.connect(analysis_port0);
	endfunction
  
	virtual task run_phase(uvm_phase phase);
		`uvm_info(get_name(), "Run Phase", UVM_NONE)
	endtask
	
endclass
