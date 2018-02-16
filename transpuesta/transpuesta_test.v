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
// Generated on "11/15/2017 09:35:36"
                                                                                
// Verilog Test Bench template for design : transpuesta
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1ns / 100ps
module transpuesta_test();
// constants                                           
// general purpose registers
localparam	WIDTH = 21;
// test vector input registers
reg clk;
reg load;
reg rst;
reg unload;
reg [WIDTH-1:0] x0;
reg [WIDTH-1:0] x1;
reg [WIDTH-1:0] x2;
reg [WIDTH-1:0] x3;
reg [WIDTH-1:0] x4;
reg [WIDTH-1:0] x5;
reg [WIDTH-1:0] x6;
reg [WIDTH-1:0] x7;
reg [WIDTH-1:0] x8;
reg [WIDTH-1:0] x9;
reg [WIDTH-1:0] x10;
reg [WIDTH-1:0] x11;
reg [WIDTH-1:0] x12;
reg [WIDTH-1:0] x13;
reg [WIDTH-1:0] x14;
reg [WIDTH-1:0] x15;
reg [WIDTH-1:0] x16;
reg [WIDTH-1:0] x17;
reg [WIDTH-1:0] x18;
reg [WIDTH-1:0] x19;
reg [WIDTH-1:0] x20;
reg [WIDTH-1:0] x21;
reg [WIDTH-1:0] x22;
reg [WIDTH-1:0] x23;
reg [WIDTH-1:0] x24;
reg [WIDTH-1:0] x25;
reg [WIDTH-1:0] x26;
reg [WIDTH-1:0] x27;
reg [WIDTH-1:0] x28;
reg [WIDTH-1:0] x29;
reg [WIDTH-1:0] x30;
reg [WIDTH-1:0] x31;
// wires                                               
wire [WIDTH-1:0]  y0;
wire [WIDTH-1:0]  y1;
wire [WIDTH-1:0]  y2;
wire [WIDTH-1:0]  y3;
wire [WIDTH-1:0]  y4;
wire [WIDTH-1:0]  y5;
wire [WIDTH-1:0]  y6;
wire [WIDTH-1:0]  y7;
wire [WIDTH-1:0]  y8;
wire [WIDTH-1:0]  y9;
wire [WIDTH-1:0]  y10;
wire [WIDTH-1:0]  y11;
wire [WIDTH-1:0]  y12;
wire [WIDTH-1:0]  y13;
wire [WIDTH-1:0]  y14;
wire [WIDTH-1:0]  y15;
wire [WIDTH-1:0]  y16;
wire [WIDTH-1:0]  y17;
wire [WIDTH-1:0]  y18;
wire [WIDTH-1:0]  y19;
wire [WIDTH-1:0]  y20;
wire [WIDTH-1:0]  y21;
wire [WIDTH-1:0]  y22;
wire [WIDTH-1:0]  y23;
wire [WIDTH-1:0]  y24;
wire [WIDTH-1:0]  y25;
wire [WIDTH-1:0]  y26;
wire [WIDTH-1:0]  y27;
wire [WIDTH-1:0]  y28;
wire [WIDTH-1:0]  y29;
wire [WIDTH-1:0]  y30;
wire [WIDTH-1:0]  y31;

// assign statements (if any)                          
transpuesta i1 (
// port map - connection between master ports and signals/registers   
	.clk(clk),
	.load(load),
	.rst(rst),
	.unload(unload),
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
	.x16(x16),
	.x17(x17),
	.x18(x18),
	.x19(x19),
	.x20(x20),
	.x21(x21),
	.x22(x22),
	.x23(x23),
	.x24(x24),
	.x25(x25),
	.x26(x26),
	.x27(x27),
	.x28(x28),
	.x29(x29),
	.x30(x30),
	.x31(x31),
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
	.y15(y15),
	.y16(y16),
	.y17(y17),
	.y18(y18),
	.y19(y19),
	.y20(y20),
	.y21(y21),
	.y22(y22),
	.y23(y23),
	.y24(y24),
	.y25(y25),
	.y26(y26),
	.y27(y27),
	.y28(y28),
	.y29(y29),
	.y30(y30),
	.y31(y31)
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
		load = 1'b0;unload = 1'b0;
		// load disabled
		x0 = 21'h0; x1 = 21'h0; x2 = 21'h0; x3 = 21'h0; x4 = 21'h0; x5 = 21'h0; x6 = 21'h0; x7 = 21'h0;
		x8 = 21'h0; x9 = 21'h0; x10 = 21'h0; x11 = 21'h0; x12 = 21'h0; x13 = 21'h0; x14 = 21'h0; x15 = 21'h0;
		x16 = 21'h0; x17 = 21'h0; x18 = 21'h0; x19 = 21'h0; x20 = 21'h0; x21 = 21'h0; x22 = 21'h0; x23 = 21'h0;
		x24 = 21'h0; x25 = 21'h0; x26 = 21'h0; x27 = 21'h0; x28 = 21'h0; x29 = 21'h0; x30 = 21'h0; x31 = 21'h0;
		
		#4 rst = 1'b0;
		
		$display($time, " << Coming out of reset >>");
		//load = 1'b1;x0 = 9'h1; x1 = 9'h1; x2 = 9'h1; x3 = 9'h1; x4 = 9'h1; x5 = 9'h1; x6 = 9'h1; x7 = 9'h1;
		@(negedge clk); // wait till the negedge of clk then continue
		load = 1'b1;x0 = 21'h1; x1 = 21'h1; x2 = 21'h1; x3 = 21'h1; x4 = 21'h1; x5 = 21'h1; x6 = 21'h1; x7 = 21'h1;
		            x8 = 21'h1; x9 = 21'h1; x10 = 21'h1; x11 = 21'h1; x12 = 21'h1; x13 = 21'h1; x14 = 21'h1; x15 = 21'h1; 
						x16 = 21'h1; x17 = 21'h1; x18 = 21'h1; x19 = 21'h1; x20 = 21'h1; x21 = 21'h1; x22 = 21'h1; x23 = 21'h1;
						x24 = 21'h1; x25 = 21'h1; x26 = 21'h1; x27 = 21'h1; x28 = 21'h1; x29 = 21'h1; x30 = 21'h1; x31 = 21'h1;$display($time, " << Loading value 2 >>");#4;
		load = 1'b1;x0 = 21'h1; x1 = 21'h1; x2 = 21'h1; x3 = 21'h1; x4 = 21'h1; x5 = 21'h1; x6 = 21'h1; x7 = 21'h1;
		            x8 = 21'h1; x9 = 21'h1; x10 = 21'h1; x11 = 21'h1; x12 = 21'h1; x13 = 21'h1; x14 = 21'h1; x15 = 21'h1; 
						x16 = 21'h1; x17 = 21'h1; x18 = 21'h1; x19 = 21'h1; x20 = 21'h1; x21 = 21'h1; x22 = 21'h1; x23 = 21'h1;
						x24 = 21'h1; x25 = 21'h1; x26 = 21'h1; x27 = 21'h1; x28 = 21'h1; x29 = 21'h1; x30 = 21'h1; x31 = 21'h1;$display($time, " << Loading value 2 >>");#4;
//		load = 1'b1;x0 = 21'h1; x1 = 21'h1; x2 = 21'h1; x3 = 21'h1; x4 = 21'h1; x5 = 21'h1; x6 = 21'h1; x7 = 21'h1;
//		            x8 = 21'h1; x9 = 21'h1; x10 = 21'h1; x11 = 21'h1; x12 = 21'h1; x13 = 21'h1; x14 = 21'h1; x15 = 21'h1; 
//						x16 = 21'h1; x17 = 21'h1; x18 = 21'h1; x19 = 21'h1; x20 = 21'h1; x21 = 21'h1; x22 = 21'h1; x23 = 21'h1;
//						x24 = 21'h1; x25 = 21'h1; x26 = 21'h1; x27 = 21'h1; x28 = 21'h1; x29 = 21'h1; x30 = 21'h1; x31 = 21'h1;$display($time, " << Loading value 2 >>");#126;
		load = 1'b1;x0 = 21'd2; x1 = 21'd2; x2 = 21'd2; x3 = 21'd2; x4 = 21'd2; x5 = 21'd2; x6 = 21'd2; x7 = 21'd2;
		            x8 = 21'd2; x9 = 21'd2; x10 = 21'd2; x11 = 21'd2; x12 =21'd2; x13 = 21'd2; x14 = 21'd2; x15 =21'd2; 
						x16 = 21'd2; x17 = 21'd2; x18 = 21'd2; x19 = 21'd2; x20 = 21'd2; x21 = 21'd2; x22 = 21'd2; x23 = 21'd2;
						x24 = 21'd2; x25 = 21'd2; x26 = 21'd2; x27 = 21'd2; x28 = 21'd2; x29 = 21'd2; x30 = 21'd2; x31 = 21'd2;$display($time, " << Loading value 2 >>");#122;
						
//		load = 1'b1;x0 = 21'h100; x1 = 21'h100; x2 = 21'h100; x3 = 21'h100; x4 = 21'h100; x5 = 21'h100; x6 = 21'h100; x7 = 21'h100;
//		            x8 = 21'h100; x9 = 21'h100; x10 = 21'h100; x11 = 21'h100; x12 = 21'h100; x13 = 21'h100; x14 = 21'h100; x15 = 21'h100;
//						x16 = 21'h100; x17 = 21'h100; x18 = 21'h100; x19 = 21'h100; x20 = 21'h100; x21 = 21'h100; x22 = 21'h100; x23 = 21'h100;
//						x24 = 21'h100; x25 = 21'h100; x26 = 21'h100; x27 = 21'h100; x28 = 21'h100; x29 = 21'h100; x30 = 21'h100; x31 = 21'h100;	$display($time, " << Loading value 1 >>");#126;
		load = 1'b0; unload = 1'b1;#200;
//		load = 1'b1;x0 = 9'h2; x1 = 9'h2; x2 = 9'h2; x3 = 9'h2; x4 = 9'h2; x5 = 9'h2; x6 = 9'h2; x7 = 9'h2;
//		            x8 = 9'h2; x9 = 9'h2; x10 = 9'h2; x11 = 9'h2; x12 = 9'h2; x13 = 9'h2; x14 = 9'h2; x15 = 9'h2; $display($time, " << Loading value 2 >>");#4;
//		load = 1'b1;x0 = 9'h3; x1 = 9'h3; x2 = 9'h3; x3 = 9'h3; x4 = 9'h3; x5 = 9'h3; x6 = 9'h3; x7 = 9'h3;
//		            x8 = 9'h3; x9 = 9'h3; x10 = 9'h3; x11 = 9'h3; x12 = 9'h3; x13 = 9'h3; x14 = 9'h3; x15 = 9'h3; $display($time, " << Loading value 2 >>");#16;
		
		$display($time, " << Simulation Complete >>");
		$finish;
		// stop the simulation
	end                                                    
endmodule

