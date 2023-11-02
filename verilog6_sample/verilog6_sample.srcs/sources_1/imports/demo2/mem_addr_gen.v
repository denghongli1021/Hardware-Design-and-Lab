module mem_addr_gen(
   input clk,
   input rst,
   input [9:0] h_cnt,
   input [9:0] v_cnt,
   output [16:0] pixel_addr
   );
    
   reg [9:0] position;
   reg [1:0] a = 0;
   assign pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1)+ position )% 76800;  //640*480 --> 320*240 

    always @ (posedge clk or posedge rst) begin
        if(rst)
          position <= 0;
        else if (a == 0) begin
            if(position < 640)
                position <= position + 2;
            else
                position <= 640;
                a = 1;
        end
        else if (a == 1) begin
            if(position > 0)
                position <= position - 2;
            else
                position <= 0;
                a = 0;
        end

    end
    
endmodule
