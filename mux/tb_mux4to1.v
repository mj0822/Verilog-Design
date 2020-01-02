`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:48:02 01/02/2020
// Design Name:   MUX
// Module Name:   E:/Programs/mux/tb_mux4to1.v
// Project Name:  mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mux4to1;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg sel1;
	reg sel2;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	MUX uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.sel1(sel1), 
		.sel2(sel2), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 1;
		sel1 = 0;
		sel2 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 1;
		c = 1;
		d = 1;
		sel1 = 1;
		sel2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 1;
		c = 1;
		d = 0;
		sel1 = 1;
		sel2 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 1;
		c = 0;
		d = 1;
		sel1 = 0;
		sel2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

