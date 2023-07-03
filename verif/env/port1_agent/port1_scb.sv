/*
Atribute: port1_scb
Author: Cristian Eduardo Gomez de la Torre
Date: 2/07/2023
Version:
File name: port1_scb
*/

class mem_scoreboard extends uvm_scoreboard;

   `uvm_component_utils(mem_scoreboard)
   
   bit [31:0] sc_mem [9:0];

   // new - constructor
   function new (string name, uvm_component parent);
      super.new(name, parent);
   endfunction : new

   //---------------------------------------
  // build_phase - create port and initialize local memory
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
      item_collected_export = new("item_collected_export", this);
      foreach(sc_mem[i]) sc_mem[i] = 8'hFF;
  endfunction: build_phase

   //Declaring port
   uvm_analysis_imp#(mem_seq_item, mem_scoreboard) item_collected_export;

   //creating port
   item_collected_export = new("item_collected_export", this);

   monitor.item_collected_port.connect(scoreboard.item_collected_export);
   
   //calling write method from monitor
   item_collected_port.write(pkt);
   
   //scoreboard write function
   virtual function void write(mem_seq_item pkt);
      pkt.print();
   endfunction : write

   // run phase
   virtual task run_phase(uvm_phase phase);
      mem_seq_item mem_pkt;
      //--- comparision logic ---  //
      forever begin
         wait(pkt.size() > 0);
            mem_pkt = pkt.pop_front();
            if(mem_pkt.cs1) begin
               if(sc_mem[mem_pkt.addr1] == mem_pkt.dout1) begin
                  `uvm_info(get_type_name(),$sformatf("------ :: READ DATA Match :: ------"),UVM_LOW)
                  `uvm_info(get_type_name(),$sformatf("Address: %0h",mem_pkt.addr1),UVM_LOW)
                  `uvm_info(get_type_name(),$sformatf("Expected Data: %0h Actual Data: %0h",sc_mem[mem_pkt.addr1],mem_pkt.dout1),UVM_LOW)
                  `uvm_info(get_type_name(),"------------------------------------",UVM_LOW)
               end
            else begin
                  `uvm_error(get_type_name(),"------ :: READ DATA Mismatch :: ------")
                  `uvm_info(get_type_name(),$sformatf("Address: %0h",mem_pkt.addr1),UVM_LOW)
                  `uvm_info(get_type_name(),$sformatf("Expected Data: %0h Actual Data: %0h",sc_mem[mem_pkt.addr1],mem_pkt.dout1),UVM_LOW)
                  `uvm_info(get_type_name(),"------------------------------------",UVM_LOW)
            end
         end
      end
   endtask : run_phase



endclass : mem_scoreboard
