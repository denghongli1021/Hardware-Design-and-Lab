/* basic time unit/time precision */
`timescale 1ns/1ps 

/* declaration of a Verilog module */
module  Counter_Practice_t;

/* input signal of the design should be declared as reg in the testbench */
reg clk = 1'b1;
reg rst_n = 1'b1;

/* output signal of the design should be declared as wire in the testbench */
wire [3:0]out;

/* "#" is used to specify a delay */
/* invert the clk signal every 5 unit of time */
always#5 clk = ~clk;

/* instatiate the module "Counter_Practice" */
Counter_Practice cp(
    /* "." is used to associate the input and output ports 
       of the instantiated module with the corresponding signals */
    .clk(clk), 
    .rst_n(rst_n), 
    .out(out)
);

/* initial blocks are not synthesizable and can only be used in test benches */
initial begin
    /* procedural timing control statement.
       Waits for a negative edge of the clk signal and then sets the rst_n register to 1'b0*/
    @(negedge clk) rst_n = 1'b0;
    @(negedge clk) rst_n = 1'b1;

    /* In this case this tells the simulator to wait 200 units of time.  */
    #200
    @(negedge clk) rst_n = 1'b0;
    @(negedge clk) rst_n = 1'b1;
    #400
    //$display("All finish , correct : %4d, false : %4d",correct , false);
    /* done simulating */
    $finish;
end

endmodule

