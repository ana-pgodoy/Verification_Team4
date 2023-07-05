/*
Atribute: port0_subs
Author: Ana Paula Godoy Monroy
Date: 02/07/2023
Version: 01
File name: port0_subs.sv
*/
class port0_subs extends uvm_subscriber #(port0_transaction) ;
  `uvm_component_utils(port0_subs)

  function new (string name, uvm_component parent);
    super.new(name, parent);
  endfunction 
  
  function void write(port0_transaction t);
	  `uvm_info(get_name(), "Subscriber", UVM_MEDIUM)
  endfunction 

endclass : port0_subs
