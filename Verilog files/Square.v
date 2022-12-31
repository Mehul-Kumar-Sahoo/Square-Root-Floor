`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2022 18:10:09
// Design Name: 
// Module Name: Square
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


module Square(out,in);
    input [4:0] in;
    output [9:0] out;
    wire [2:0] c[8:0];

    assign {c[0],out[0]} = in[0];
    assign {c[1],out[1]} = in[1]*in[0]+in[1]*in[0]+c[0];
    assign {c[2],out[2]} = in[0]*in[2]+in[0]*in[2]+c[1];
    assign {c[3],out[3]} = in[0]*in[3]+in[1]*in[2]+in[0]*in[3]+in[1]*in[2]+c[2];
    assign {c[4],out[4]} = in[0]*in[4]+in[1]*in[3]+in[0]*in[4]+in[1]*in[3]+in[2]+c[3];
    assign {c[5],out[5]} = in[1]*in[4]+in[2]*in[3]+in[1]*in[4]+in[2]*in[3]+c[4];
    assign {c[6],out[6]} = in[2]*in[4]+in[2]*in[4]+in[3]+c[5];
    assign {c[7],out[7]} = in[3]*in[4]+in[3]*in[4]+c[6];
    assign {c[8],out[8]} = in[4]+c[7];
    assign out[9] = c[8];
endmodule
