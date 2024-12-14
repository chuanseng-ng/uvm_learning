`define DELAY 10

module tb_uvm;
import test_pkg::*;
import uvm_pkg::*;

    reg clk;
    reg rstn;

    always #10 clk = ~clk;
    dut_if _if (
        .clk(clk)
    );

    det_1011 u0 (
        .clk(clk),
        .rstn(rstn),
        .in(_if.in),
        .out(_if.out)
    );

    initial begin
        $display("Dumping VCD waveform file");
        $dumpfile("dut_uvm.vcd");
        $dumpvars();
        main;
    end

    task static main;
        fork
            reset_gen;
        join
    endtask

    task static reset_gen;
        begin
            #(`DELAY*2)
            rstn = 1'b1;
            #(`DELAY)
            rstn = 1'b0;
            #(`DELAY*2)
            rstn = 1'b1;
        end
    endtask

    initial begin
        clk <= 0;
        uvm_config_db#(virtual dut_if)::set(null, "uvm_test_top", "dut_if", _if);
        run_test("test_1011");
    end

endmodule
