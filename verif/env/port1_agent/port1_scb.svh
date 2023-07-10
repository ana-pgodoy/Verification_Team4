/*
Atribute: port1_scb
Author: Cristian Eduardo Gomez de la Torre
Date: 2/07/2023
Version:
File name: port1_scb
*/

class port1_scb extends uvm_scoreboard;
	`uvm_component_utils(port1_scb)

	uvm_analysis_export #(port1_transaction) ana_export1;
	uvm_tlm_analysis_fifo#(port1_transaction) ana_fifo;

	function new(string name, uvm_component parent);
		super.new(name,parent);
		ana_export1 = new("ana_export1",this);
		ana_fifo = new("ana_fifo",this);
	endfunction

	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		ana_export1.connect(ana_fifo.analysis_export);
	endfunction

   bit [31:0] sc_mem [9:0];

   // run phase
   virtual task run_phase(uvm_phase phase);
      uvm_sequence_item mem_pkt;
      //--- comparision logic ---  //
     /* forever begin
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
      end*/
   endtask : run_phase

endclass
