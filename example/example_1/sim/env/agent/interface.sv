// The interface allows verification components to access DUT signals
// using a virtual interface handle
`ifndef FIFO_MEM_INTF__SV
`define FIFO_MEM_INTF__SV

  interface dut_if #() (
    input clk
    );

    // Signals
    logic rstn;
    logic in;
    logic out;

    clocking cb @(posedge clk);
        default input #1step output #3ns;
        input out;
        output in;
    endclocking

  endinterface

`endif
