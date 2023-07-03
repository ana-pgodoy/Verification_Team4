/*
Atribute: port0_scb
Author: Ana Paula Godoy Monroy
Date: 01/07/2023
Version: 01
File name: port0_scb.sv
*/
import uvm_pkg::*;
`include "uvm_macros.svh"

virtual class port0_scb extends uvm_scoreboard;
  `uvm_component_utils(port0_scb)

  virtual port0_intf vif;
  
  uvm_analysis_imp #(port0_transfer, port0_scoreboard)

  function new (string name, uvm_component parent);
    super.new(name, parent);
  endfunction 

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  	`uvm_info(get_name(), "Build Phase", UVM_MEDIUM)
  	item_collected_export = new("item_collected_export", this);
  endfunction : build_phase
  

endclass : port0_scb
