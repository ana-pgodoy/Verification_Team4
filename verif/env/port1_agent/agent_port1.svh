Disenador: Paulina Vianney Núñez Luna
Modulo: agent_port1
Compania: Cinvestav
Contacto: paulinav.nunezl@gmail.com

*/

import uvm_pkg::*;
`include "uvm_macros.svh"

class agent_port1 extends uvm_agent
  `uvm_component_utils(agent_port1)
	//scoreboard
	//driver
	//monitor
	//subscriber
	//sequencer
	function new(input string name, uvm_component parent);
		super.new(name,parent);
	endfunction
	
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		//monitor=port1_monitor::type_id::create("monitor",this);
		//scoreboard
		//driver
		//monitor
		//sequencer
	endfunction
	
	virtual function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		`uvm_info(get_name(), "Connect Phase", UVM_NONE)
	endfunction
  
	virtual task run_phase(uvm_phase phase);
		`uvm_info(get_name(), "Run Phase", UVM_NONE)
	endtask
	
endclass
