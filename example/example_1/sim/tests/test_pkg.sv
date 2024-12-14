`ifndef TEST_PKG__SV
`define TEST_PKG__SV

  package test_pkg;

    // Import UVM
    import uvm_pkg::*;
    import seq_pkg::*;
    import regs_pkg::*;
    import agent_pkg::*;
    import env_pkg::*;
    `include "uvm_macros.svh"

    // Import UVC
    `include "test.sv"

  endpackage

`endif

//End of test_pkg
