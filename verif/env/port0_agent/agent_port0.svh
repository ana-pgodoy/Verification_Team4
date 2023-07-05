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
	//MISDATOS nombre filler mientras tanto
	port0_sqr #(MISDATOS)sequencer;
	
	function new(input string name, uvm_component parent);
		super.new(name,parent);
	endfunction
	
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		
		monitor=port0_monitor::type_id::create("monitor",this);
		scoreboard=port0_scb::type_id::create("scoreboard",this);
		driver=port0_driver::type_id::create("driver",this);
		monitor=port0_monitor::type_id::create("monitor",this);
		sequencer=port0_sqr::type_id::create("sequencer",this);
		
		
	endfunction
	
	virtual function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		`uvm_info(get_name(), "Connect Phase", UVM_NONE)
		
		
	endfunction
  
	virtual task run_phase(uvm_phase phase);
		`uvm_info(get_name(), "Run Phase", UVM_NONE)
	endtask
	
endclass