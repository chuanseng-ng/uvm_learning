`ifndef AGENT_PKG__SV
`define AGENT_PKG__SV

  package agent_pkg;

    // Import UVM
    import uvm_pkg::*;
    import regs_pkg::*;
    import seq_pkg::*;
    `include "uvm_macros.svh"

    // Include Agent UVCs
    `include "interface.sv"
    `include "agent_cfg.sv"
    `include "driver.sv"
    `include "monitor.sv"
    `include "sequencer.sv"
    `include "agent.sv"
  endpackage

`endif

//End of agent_pkg
