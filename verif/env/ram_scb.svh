/*
Atribute: ram_scoreboard
Author: 
Date: 03/07/2023
Version: 01
File name: ram_scb.svh
*/

virtual class ram_scb extends uvm_scoreboard;
  `uvm_component_utils(ram_scb)
  
  uvm_analysis_export #(uvm_sequence_item) analy_export;

  function new (string name, uvm_component parent);
    super.new(name, parent);
	analy_export=new("analy_export",this);
  endfunction 

endclass : ram_scb