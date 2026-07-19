`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2026 05:26:07 PM
// Design Name: 
// Module Name: dataBus_b_tb
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

`timescale 1ns / 1ps
module dataBus_b_tb;
reg s1, s0;
reg i0, i1, i2, i3;
wire d;
dataBus dut (.s1(s1), .s0(s0), .i0(i0), .i1(i1), .i2(i2), .i3(i3), .d(d));
initial begin
i3 = 0; i2 = 1; i1 = 0; i0 = 1;//0101
s1  = 0; s0 = 0;#10
s1  = 0; s0 = 1;#10
s1  = 1; s0 = 0;#10
s1  = 1; s0 = 1;#10
i3 = 0; i2 = 1; i1 = 1; i0 = 1;//0111
s1  = 0; s0 = 0;#10
s1  = 0; s0 = 1;#10
s1  = 1; s0 = 0;#10
s1  = 1; s0 = 1;#10
i3 = 0; i2 = 1; i1 = 1; i0 = 0;//0110
s1  = 0; s0 = 0;#10
s1  = 0; s0 = 1;#10
s1  = 1; s0 = 0;#10
s1  = 1; s0 = 1;#10
i3 = 1; i2 = 1; i1 = 1; i0 = 0;//1110
s1  = 0; s0 = 0;#10
s1  = 0; s0 = 1;#10
s1  = 1; s0 = 0;#10
s1  = 1; s0 = 1;#10
i3 = 0; i2 = 0; i1 = 0; i0 = 1;//0001
s1  = 0; s0 = 0;#10
s1  = 0; s0 = 1;#10
s1  = 1; s0 = 0;#10
s1  = 1; s0 = 1;#10
i3 = 0; i2 = 0; i1 = 1; i0 = 1;//0011
s1  = 0; s0 = 0;#10
s1  = 0; s0 = 1;#10
s1  = 1; s0 = 0;#10
s1  = 1; s0 = 1;#10
i3 = 1; i2 = 0; i1 = 1; i0 = 1;//1011
s1  = 0; s0 = 0;#10
s1  = 0; s0 = 1;#10
s1  = 1; s0 = 0;#10
s1  = 1; s0 = 1;#10
i3 = 1; i2 = 1; i1 = 0; i0 = 0;//1100
s1  = 0; s0 = 0;#10
s1  = 0; s0 = 1;#10
s1  = 1; s0 = 0;#10
s1  = 1; s0 = 1;#10
$finish;
end
endmodule
