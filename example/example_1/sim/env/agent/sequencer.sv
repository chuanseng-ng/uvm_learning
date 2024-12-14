`ifndef SEQUENCER__SV
`define SEQUENCER__SV

  class sequencer extends uvm_sequencer#(Item);

    // Factory Registration
    `uvm_component_utils(sequencer)

    // Tasks and Functions
    extern function new(string name = "sequencer", uvm_component parent = null);
  endclass

  function sequencer::new(string name = "sequencer", uvm_component parent = null);
    super.new(name, parent);
  endfunction

`endif

//End of sequencer
