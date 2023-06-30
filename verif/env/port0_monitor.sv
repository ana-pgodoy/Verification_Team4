class monitor extends uvm_monitor;
  `uvm_component_utils(monitor)
  
   function new(input string name, uvm_component parent);
    super.new(name,parent);
  endfunction

endclass
