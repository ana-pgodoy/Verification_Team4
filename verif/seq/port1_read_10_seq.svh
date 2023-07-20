class port1_read_10_seq_cs1 extends port1_base_seq
   `uvm_object_utils(port1_read_10_seq_cs1)

   function new(string name = "");
      super.new(name);
   endfunction

   task body();
      req = ::type_id::create("req");
      start_item(req);
      req.randomize() with { req.width == env.env_cfg.agent_cfg.cs1_width:
                            req.heigth == env.env_cfg.agent_cfg.cs1_heigth; };
                  `uvm_info(get_name(),"Generating sequence item",UVM_HIGH)
                  `uvm_info(get_name(),$sformatf("%s",req.sprint(uvm_default_line_printer)),UVM_DEBUG)
      finish_item(req);
   endtask

endclass
