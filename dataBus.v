`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2026 10:01:45 PM
// Design Name: 
// Module Name: dataBus
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

//Structural
`timescale 1ns / 1ps
module dataBus(
    input s1, s0,i0, i1, i2, i3, 
    output d
    );
wire nots1, nots0;
wire w0, w1, w2, w3;

not g1(nots1, s1);
not g2(nots0, s0);

and g3(w0, nots1, nots0, i0);//00
and g4(w1, nots1, s0, i1);//01
and g5(w2, s1, nots0, i2);//10
and g6(w3, s1, s0, i3);//11
or g7(d, w0, w1, w2, w3);
endmodule

