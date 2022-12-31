`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2022 18:00:31
// Design Name: 
// Module Name: Square_root_floor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Square_root_floor(sqrt,num,clk,rst);
    input [9:0] num;
    input clk,rst;
    output reg [4:0] sqrt;
    wire [9:0] temp;
    reg [4:0] out_temp;
    
    Square sq1(temp,out_temp);

    always @(posedge clk) begin
        if(rst) begin
            out_temp = 5'b00000;
        end
        // assign temp = out_temp*out_temp;
        if(temp>num) begin
            sqrt = out_temp - 1;
        end
        else if(temp==num) begin
            sqrt = out_temp;
        end
        else begin
            out_temp = out_temp + 1;
        end
    end
endmodule
