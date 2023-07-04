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
  
  uvm_analysis_export #(uvm_sequence_item) analysis_export0;

  function new (string name, uvm_component parent);
    super.new(name, parent);
	analysis_export0=new("analysis_export0",this);
  endfunction 

endclass : port0_scb