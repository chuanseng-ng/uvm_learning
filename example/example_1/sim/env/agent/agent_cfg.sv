`ifndef AGENT_CFG__SV
`define AGENT_CFG__SV

  class agent_cfg extends uvm_object;

    // Factory Registration
    `uvm_object_utils(agent_cfg)

    // UVM Agent Controls

    uvm_active_passive_enum is_active = UVM_ACTIVE;

    // Tasks and Functions

    extern function new(string name = "agent_cfg");

  endclass

  function agent_cfg::new(string name = "agent_cfg");
    super.new(name);
  endfunction

`endif

//End of agent_cfg
