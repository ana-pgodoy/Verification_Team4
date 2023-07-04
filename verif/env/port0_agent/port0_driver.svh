/*

Disenador: Benjamin Gonzalez Alvarado
Modulo: port0_driver
Compania: Cinvestav
Contacto: a.g.ben.min@gmail.com

*/

import uvm_pkg::*;
`include "uvm_macros.svh"

//MISDATOS nombre filler mientras tanto
class port0_driver extends uvm_driver#(MISDATOS)
	`uvm_component_utils(port0_driver)

	function new(input string name, uvm_component parent);
		super.new(name,parent);
	endfunction
	

endclass