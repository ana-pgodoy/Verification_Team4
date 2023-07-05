/*
Atribute: port0_scb
Author: Ana Paula Godoy Monroy
Date: 01/07/2023
update: 04/07/2023
Version: 01
File name: port0_scb.sv
*/

virtual class port0_scb extends uvm_scoreboard;
  `uvm_component_utils(port0_scb)

  uvm_analysis_export #(port0_transaction) analysis_export0;
  uvm_tlm_analysis_fifo#(port0_transaction) analysis_fifo;

  function new (string name, uvm_component parent);
    super.new(name, parent);
	analysis_export0=new("analysis_export0",this);
	analysis_fifo=new("analysis_fifo",this);
  endfunction
  
  	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		analysis_export0.connect(analysis_fifo.analysis_export);
	endfunction

endclass : port0_scb
