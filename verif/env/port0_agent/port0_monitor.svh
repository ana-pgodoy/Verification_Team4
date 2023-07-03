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
	`uvm_component_utils(port0_monitor)
	
	virtual port0_intf intf0; // SystemVerilog virtual interface
	
	uvm_analysis_port #(uvm_sequence_item) analysis_port0;
  function new (string name, uvm_component parent);
    super.new(name, parent);
	analysis_port0=new("analysis_port0",this);
  endfunction 
  
endclass : port0_monitor
