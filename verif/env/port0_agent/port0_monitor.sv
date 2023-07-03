/*
Atribute: port0_monitor
Author: Ana Paula Godoy Monroy
Date: 29/06/2023
Version: 01
File name: port0_monitor.sv
*/
import uvm_pkg::*;
`include "uvm_macros.svh"

virtual class port0_monitor extends uvm_monitor;
  bit checks_enable = 1; // Control checking in monitor and interface.
	bit coverage_enable = 1; // Control coverage in monitor and interface.
  
	`uvm_component_utils_begin(port0_monitor)
	`uvm_field_int(checks_enable, UVM_ALL_ON)
	`uvm_field_int(coverage_enable, UVM_ALL_ON)
	`uvm_component_utils_end

	virtual port0_intf intf0; // SystemVerilog virtual interface
  
	uvm_analysis_port #(simple_item) item_collected_port;
  
   function new(input string name, uvm_component parent);
    super.new(name,parent);
  endfunction

endclass
