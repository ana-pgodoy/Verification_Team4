/*

Diseñador: Paulina Vianney Núñez Luna
Modulo: port1_monitor
Compania: Cinvestav
Contacto: paulinav.nunezl@gmail.com

*/


virtual class port1_monitor extends uvm_monitor;
  `uvm_component_utils(port1_monitor)
	
	virtual port1_intf intf1; // SystemVerilog virtual interface
	
  uvm_analysis_port #(uvm_sequence_item) analysis_port1;
  function new (string name, uvm_component parent);
    super.new(name, parent);
    analysis_port1=new("analysis_port1",this);
  endfunction 
  
endclass : port1_monitor
