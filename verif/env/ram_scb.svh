/*
Atribute: ram_scoreboard
Author: Paulina Vianney Núñez Luna
Date: 05/07/2023
Version: 01
File name: ram_scb.svh
*/

class ram_scb extends uvm_scoreboard;
  `uvm_component_utils(ram_scb)
 
  
  uvm_analysis_export #(port0_transaction) analysis_export0;
  uvm_tlm_analysis_fifo#(port0_transaction) analysis_fifo0;
   uvm_analysis_export #(port1_transaction) analysis_export1;
  uvm_tlm_analysis_fifo#(port1_transaction) analysis_fifo1;
  
  function new (string name, uvm_component parent);
    super.new(name, parent);
	analysis_export0=new("analysis_export0",this);
    analysis_fifo0=new("analysis_fifo0",this);
    analysis_export1=new("analysis_export1",this);
    analysis_fifo1=new("analysis_fifo1 ",this);
  endfunction 

  function void connect_phase(uvm_phase phase);
	super.connect_phase(phase);
    analysis_export0.connect(analysis_fifo0.analysis_export);
    analysis_export1.connect(analysis_fifo1.analysis_export);
  endfunction 

endclass : ram_scb

