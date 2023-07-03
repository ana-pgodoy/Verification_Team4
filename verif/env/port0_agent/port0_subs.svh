/*
Atribute: port0_subs
Author: Ana Paula Godoy Monroy
Date: 02/07/2023
Version: 01
File name: port0_subs.sv
*/
import uvm_pkg::*;
`include "uvm_macros.svh"

virtual class port0_subs extends uvm_subscriber #(uvm_sequence_item) ;
  `uvm_component_utils(port0_subs)

  function new (string name, uvm_component parent);
    super.new(name, parent);
  endfunction 
  
  pure virtual function void write(uvm_sequence_item t)
	`uvm_info(get_name(), "conv_subscriber", UVM_MEDIUM)
  endfunction 

endclass : port0_subs
