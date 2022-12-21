`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2022 18:49:42
// Design Name: 
// Module Name: Testbench
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


module Testbench;
    reg clk,rst;
    reg [9:0] number;
    wire [4:0] root;

    always begin
        #10 clk = ~clk;
    end

    // Instantiating design module
    Square_root_floor sqrt1(.sqrt(root),.num(number),.clk(clk),.rst(rst));

    initial begin
        clk = 0;
        rst = 1;
        #20 rst = 0;
        $monitor("number : %b, square root : %b",number,root);
        number = 10'b0000001001;
        #100000 $finish;
    end
endmodule
