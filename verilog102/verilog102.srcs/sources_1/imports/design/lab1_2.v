`timescale 1ns/100ps
module lab1_2 (
    input wire [3:0] source_0,
    input wire [3:0] source_1,
    input wire [3:0] source_2,
    input wire [3:0] source_3,
    input wire [1:0] op_0,
    input wire [1:0] op_1,
    input wire [1:0] request,
    output reg [3:0] result
);  
    /* Note that result can be either reg or wire. 
    * It depends on how you design your module. */
    // add your design here 
    wire [3:0] temp_result; // Temporary result storage
    wire [3:0] temp_result2;
    
    // Instantiate lab1_1 for op_0
    lab1_1 lab1_1_op_0 (
        .op(op_0),
        .a(source_0),
        .b(source_1),
        .d(temp_result) 
    );
    // Instantiate lab1_1 for op_1
    lab1_1 lab1_1_op_1 (
        .op(op_1),
        .a(source_2),
        .b(source_3), 
        .d(temp_result2)
    );
    
    always @(*) begin 
        case(request)
            2'b10 : result <= temp_result2;
            2'b01 : result <= temp_result;
            2'b11 : result <= temp_result;
            2'b00 : result <= 0;
            default : result <= 0;
        endcase
        //######### Question2 ##########
        // if (op_0 == op_1) begin
        //     result <= temp_result;
        // end
        // else if (op_0 > op_1) begin
        //     result <= temp_result2;
        // end
        // else if (op_0 < op_1) begin
        //     result <= temp_result;
        // end
        //##############################

        // if (request[0] == 1'b1 && request[1] == 1'b0) begin
        //     // Priority for op_0 request
            
        // end
        // else if (request[1] == 1'b1 && request[0] == 1'b0) begin
        //     // Priority for op_1 request
        //     // lab1_1_op_1 already provides the result
            
        //     case(op_1)
        //         2'b00 : temp_result2 <= source_2 & source_3;
        //         2'b01 : temp_result2 <= (source_2 << source_3);
        //         2'b10 : temp_result2 <= source_2 | source_3;
        //         2'b11 : temp_result2 <= (source_2 >> source_3);
        //         default: temp_result2 <= 4'b0;
        //     endcase
        //     result <= temp_result2;
        // end
        // else begin
        //     // No request, result is 0
        //     result <= 4'b0;
        // end
    end
endmodule
