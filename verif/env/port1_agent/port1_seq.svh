/*
Atribute: port1_seq
Author: Cristian Eduardo Gomez de la Torre
Date: 2/07/2023
Version:
File name: port1_seq
*/

class port1_sequencer extends uvm_sequencer#(port1_transaction);
	`uvm_component_utils(port1_sequencer)

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
	
endclass
