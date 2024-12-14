`ifndef SEQ_PKG__SV
`define SEQ_PKG__SV

  package seq_pkg;

    // Import UVM Macros and Package
    import uvm_pkg::*;
    `include "uvm_macros.svh"

    // Include all sequence items and sequences
    `include "sequence_item.sv"
    `include "sequence.sv"

  endpackage

`endif

//End of seq_pkg
