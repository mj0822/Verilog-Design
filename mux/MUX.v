`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:13 01/02/2020 
// Design Name: 
// Module Name:    MUX 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUX(input a,b,c,d,sel1,sel2, output y 
    );
	wire m,n;
	mux2to1 mux1 (m, a , b ,sel1);
	mux2to1 mux2 (n, c , d ,sel1);
	mux2to1 mux3 (y, m , n ,sel2);
endmodule

//module mux2to1(output r, input p,q,sel
//	);
//	
//	not v1(sel_not,sel);
//	and v2(out1,p,sel_not);
//	and v3(out2,q,sel);
//	or v4(r,out1,out2);
//endmodule


module mux2to1(output reg r, input p,q,sel
	);
	always@(p,q)
	begin
	if(sel ==0)  begin
	
		r = p; end
	else begin
		r = q; end
	end
endmodule
