module mem_addr_gen(
   input clk,
   input rst,
   input en,
   input dir,
   input enlarge,
   input vmir,
   input hmir,
   input [9:0] h_cnt,
   input [9:0] v_cnt,
   output [16:0] pixel_addr
   );
    
   reg [9:0] position;
   // reg [1:0] a = 0;
   wire [1:0] a;
    assign a = (enlarge) ? 2 : 1;
    wire [9:0] h;
    wire [9:0] v;
    assign h = (hmir) ? 640-h_cnt:h_cnt;
    assign v = (vmir) ? 480-v_cnt:v_cnt;
    wire [9:0] h_centered = (enlarge) ? 320 : 0;
    wire [9:0] v_centered = (enlarge) ? 240 : 0;
    assign pixel_addr = (((h+h_centered)>>(a))+320*((v+v_centered)>>(a)) +position )% 76800;  //640*480 --> 320*240 

    always @ (posedge clk or posedge rst) begin
        if(rst)
          position <= 0;
        else if (en == 0) begin
            position <= position;
        end 
        else if (dir == 0) begin
            if (hmir) begin
                if(position > 0)
                    position <= position - 1;
                else begin
                    position <= 640;
                    // a = 1;
                end
            end
            else begin
                if(position < 640)
                    position <= position + 1;
                else begin
                    position <= 0;
                    // a = 1;
                end
            end
        end
        else if (dir == 1) begin
            if (hmir == 0) begin
                if(position > 0)
                    position <= position - 1;
                else begin
                    position <= 640;
                    // a = 1;
                end
            end
            else begin
                if(position < 640)
                    position <= position + 1;
                else begin
                    position <= 0;
                    // a = 1;
                end
            end
        end
        // else if (a == 0) begin
        //     if(position < 640)
        //         position <= position + 1;
        //     else
        //         position <= 640;
        //         a = 1;
        // end
        // else if (a == 1) begin
        //     if(position > 0)
        //         position <= position - 1;
        //     else
        //         position <= 0;
        //         a = 0;
        // end

    end
    
endmodule
