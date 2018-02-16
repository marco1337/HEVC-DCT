// Copyright (C) 2017  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// *****************************************************************************
// This file contains a Verilog test bench template that is freely editable to  
// suit user's needs .Comments are provided in each section to help the user    
// fill out necessary details.                                                  
// *****************************************************************************
// Generated on "11/12/2017 16:51:28"
                                                                                
// Verilog Test Bench template for design : dct16
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1ns / 100ps
module dct16_test();

	localparam	WIDTH_X = 9;
	localparam	WIDTH_Y = 20;
	// test vector input registers
	reg clk;
	reg load;
	reg rst;
	reg [WIDTH_X-1:0] x0;
	reg [WIDTH_X-1:0] x1;
	reg [WIDTH_X-1:0] x2;
	reg [WIDTH_X-1:0] x3;
	reg [WIDTH_X-1:0] x4;
	reg [WIDTH_X-1:0] x5;
	reg [WIDTH_X-1:0] x6;
	reg [WIDTH_X-1:0] x7;
	reg [WIDTH_X-1:0] x8;
	reg [WIDTH_X-1:0] x9;
	reg [WIDTH_X-1:0] x10;
	reg [WIDTH_X-1:0] x11;
	reg [WIDTH_X-1:0] x12;
	reg [WIDTH_X-1:0] x13;
	reg [WIDTH_X-1:0] x14;
	reg [WIDTH_X-1:0] x15;
	// wires                                               
	wire [WIDTH_Y-1:0]  y0;
	wire [WIDTH_Y-1:0]  y1;
	wire [WIDTH_Y-1:0]  y2;
	wire [WIDTH_Y-1:0]  y3;
	wire [WIDTH_Y-1:0]  y4;
	wire [WIDTH_Y-1:0]  y5;
	wire [WIDTH_Y-1:0]  y6;
	wire [WIDTH_Y-1:0]  y7;
	wire [WIDTH_Y-1:0]  y8;
	wire [WIDTH_Y-1:0]  y9;
	wire [WIDTH_Y-1:0]  y10;
	wire [WIDTH_Y-1:0]  y11;
	wire [WIDTH_Y-1:0]  y12;
	wire [WIDTH_Y-1:0]  y13;
	wire [WIDTH_Y-1:0]  y14;
	wire [WIDTH_Y-1:0]  y15;

// assign statements (if any)                          
dct16 i1 (
// port map - connection between master ports and signals/registers   
	.clk(clk),
	.load(load),
	.rst(rst),
	.x0(x0),
	.x1(x1),
	.x2(x2),
	.x3(x3),
	.x4(x4),
	.x5(x5),
	.x6(x6),
	.x7(x7),
	.x8(x8),
	.x9(x9),
	.x10(x10),
	.x11(x11),
	.x12(x12),
	.x13(x13),
	.x14(x14),
	.x15(x15),
	.y0(y0),
	.y1(y1),
	.y2(y2),
	.y3(y3),
	.y4(y4),
	.y5(y5),
	.y6(y6),
	.y7(y7),
	.y8(y8),
	.y9(y9),
	.y10(y10),
	.y11(y11),
	.y12(y12),
	.y13(y13),
	.y14(y14),
	.y15(y15)
);
	always #2 
		clk = ~clk;  
	
	
	initial
	
		begin
		$display($time, " << Starting the Simulation >>");
		clk = 1'b0;
		// at time 0
		rst = 1'b1;
		// reset is active
		load = 1'b0;
		// load disabled
		x0 = 9'h0; x1 = 9'h0; x2 = 9'h0; x3 = 9'h0; x4 = 9'h0; x5 = 9'h0; x6 = 9'h0; x7 = 9'h0;
		x8 = 9'h0; x9 = 9'h0; x10 = 9'h0; x11 = 9'h0; x12 = 9'h0; x13 = 9'h0; x14 = 9'h0; x15 = 9'h0;
		
		#4 rst = 1'b0;
		
		$display($time, " << Coming out of reset >>");
		//load = 1'b1;x0 = 9'h1; x1 = 9'h1; x2 = 9'h1; x3 = 9'h1; x4 = 9'h1; x5 = 9'h1; x6 = 9'h1; x7 = 9'h1;
		@(negedge clk); // wait till the negedge of clk then continue
		load = 1'b1;x0 = 9'h1; x1 = 9'h1; x2 = 9'h1; x3 = 9'h1; x4 = 9'h1; x5 = 9'h1; x6 = 9'h1; x7 = 9'h1;
		            x8 = 9'h1; x9 = 9'h1; x10 = 9'h1; x11 = 9'h1; x12 = 9'h1; x13 = 9'h1; x14 = 9'h1; x15 = 9'h1; $display($time, " << Loading value 2 >>");#30;
		load = 1'b1;x0 = 9'h100; x1 = 9'h100; x2 = 9'h100; x3 = 9'h100; x4 = 9'h100; x5 = 9'h100; x6 = 9'h100; x7 = 9'h100;
		            x8 = 9'h100; x9 = 9'h100; x10 = 9'h100; x11 = 9'h100; x12 = 9'h100; x13 = 9'h100; x14 = 9'h100; x15 = 9'h100; $display($time, " << Loading value 1 >>");#30;
//		load = 1'b1;x0 = 9'h2; x1 = 9'h2; x2 = 9'h2; x3 = 9'h2; x4 = 9'h2; x5 = 9'h2; x6 = 9'h2; x7 = 9'h2;
//		            x8 = 9'h2; x9 = 9'h2; x10 = 9'h2; x11 = 9'h2; x12 = 9'h2; x13 = 9'h2; x14 = 9'h2; x15 = 9'h2; $display($time, " << Loading value 2 >>");#4;
//		load = 1'b1;x0 = 9'h3; x1 = 9'h3; x2 = 9'h3; x3 = 9'h3; x4 = 9'h3; x5 = 9'h3; x6 = 9'h3; x7 = 9'h3;
//		            x8 = 9'h3; x9 = 9'h3; x10 = 9'h3; x11 = 9'h3; x12 = 9'h3; x13 = 9'h3; x14 = 9'h3; x15 = 9'h3; $display($time, " << Loading value 2 >>");#16;
		
		$display($time, " << Simulation Complete >>");
		$finish;
		// stop the simulation
	end    

	
endmodule

