`ifndef ENV_PKG__SV
`define ENV_PKG__SV
`define LENGTH 4

  package env_pkg;

    // Import UVM
    import uvm_pkg::*;
    import seq_pkg::*;
    import regs_pkg::*;
    import agent_pkg::*;
    `include "uvm_macros.svh"

    // Import UVM
    `include "scoreboard.sv"
    //`include "cov.sv"
    `include "env.sv"
  endpackage

`endif

//End of env_pkg
