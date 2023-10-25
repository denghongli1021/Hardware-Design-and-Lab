`timescale 1ns/100ps
module lab1_1_t ();

    parameter DELAY = 5;
    reg [1:0] op;
    reg [3:0] a;
    reg [3:0] b;  
    wire [3:0] d; 

    //====================================
    // TODO
    // Connect your lab1_1 module here with "op"?? "a"?? "b" and "d"
    // Please connect it by port name but not order
    lab1_1 instance1 (
        .op(op),
        .a(a),
        .b(b),
        .d(d)
    );
    //====================================

    integer i, error_count;
    initial begin
        $display("===== Simulation ======");
        error_count = 0;
        {op, a, b} = 10'b0;

        for(i = 0 ; i < 1024 ; i = i + 1) begin
            
            {op, a, b} = {op, a, b}+1;
            //====================================
            // TODO
            // Understand why we put #DELAY here but not before "op" assigning (對信??? op?�a ??? b ??��?��?��?��?��?? ?��?���???��?��?��?��?��?��?��?��?��?�任何實??��?��?��?��?�模?��)
            //or after if-else block (?�是模擬??��?��?�檢?�� 純粹??��?��?��?��?��?��?��?要�?��?�延?��)
            #DELAY;
            //====================================
            if(d !== golden_d(op, a, b)) begin

                $display("[ERROR] op = %b, a = %b , b = %b , d = %b, correct d should be %be",
                    op, a, b, d, golden_d(op, a, b));
                error_count = error_count + 1;
            end
            else begin
                $display("[CORRECT] op = %b, d = %b ,%4d case",
                    op, d ,i);
            end

        end
        
        //#DELAY;
        if(error_count === 0)
            $display("All Correct!!"); //沒�?�跳?���??
        else    
            $display("There are %d errors QQ", error_count);


        $finish;
    end

    //====================================
    function [3:0] golden_d;
        input [1:0] op;
        input [3:0] a;
        input [3:0] b;
        begin
            if(op == 2'b00)
                golden_d = a & b;
            else if(op == 2'b01)
                golden_d = a << b;
            else if(op == 2'b10)
                golden_d = a | b;
            else if(op == 2'b11)
                golden_d = a >> b;
            else
                golden_d = a >> b;
        end
    endfunction
    //====================================

endmodule
