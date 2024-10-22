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
// Generated on "11/24/2017 10:17:10"
                                                                                
// Verilog Test Bench template for design : idct32
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1ns / 100ps
module idct32_test();
// constants                                           
// general purpose registers

// test vector input registers
reg clk;
reg load;
reg rst;
reg [15:0] x0;
reg [15:0] x1;
reg [15:0] x2;
reg [15:0] x3;
reg [15:0] x4;
reg [15:0] x5;
reg [15:0] x6;
reg [15:0] x7;
reg [15:0] x8;
reg [15:0] x9;
reg [15:0] x10;
reg [15:0] x11;
reg [15:0] x12;
reg [15:0] x13;
reg [15:0] x14;
reg [15:0] x15;
reg [15:0] x16;
reg [15:0] x17;
reg [15:0] x18;
reg [15:0] x19;
reg [15:0] x20;
reg [15:0] x21;
reg [15:0] x22;
reg [15:0] x23;
reg [15:0] x24;
reg [15:0] x25;
reg [15:0] x26;
reg [15:0] x27;
reg [15:0] x28;
reg [15:0] x29;
reg [15:0] x30;
reg [15:0] x31;
// wires                                               
wire [21:0]  y0;
wire [21:0]  y1;
wire [21:0]  y2;
wire [21:0]  y3;
wire [21:0]  y4;
wire [21:0]  y5;
wire [21:0]  y6;
wire [21:0]  y7;
wire [21:0]  y8;
wire [21:0]  y9;
wire [21:0]  y10;
wire [21:0]  y11;
wire [21:0]  y12;
wire [21:0]  y13;
wire [21:0]  y14;
wire [21:0]  y15;
wire [21:0]  y16;
wire [21:0]  y17;
wire [21:0]  y18;
wire [21:0]  y19;
wire [21:0]  y20;
wire [21:0]  y21;
wire [21:0]  y22;
wire [21:0]  y23;
wire [21:0]  y24;
wire [21:0]  y25;
wire [21:0]  y26;
wire [21:0]  y27;
wire [21:0]  y28;
wire [21:0]  y29;
wire [21:0]  y30;
wire [21:0]  y31;

// assign statements (if any)                          
idct32 i1 (
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
		load = 1'b0;
		// load disabled
		x0 = 16'd0; x1 = 16'd0; x2 = 16'd0; x3 = 16'd0; x4 = 16'd0; x5 = 16'd0; x6 = 16'd0; x7 = 16'd0;
		x8 = 16'd0; x9 = 16'd0; x10 = 16'd0; x11 = 16'd0; x12 = 16'd0; x13 = 16'd0; x14 = 16'd0; x15 = 16'd0;
		x16 = 16'd0; x17 = 16'd0; x18 = 16'd0; x19 = 16'd0; x20 = 16'd0; x21 = 16'd0; x22 = 16'd0; x23 = 16'd0;
		x24 = 16'd0; x25 = 16'd0; x26 = 16'd0; x27 = 16'd0; x28 = 16'd0; x29 = 16'd0; x30 = 16'd0; x31 = 16'd0;
		// input data is 00000000
		#4 rst = 1'b0;
		// at time 4 release reset
		$display($time, " << Coming out of reset >>");
		
		@(negedge clk); // wait till the negedge of clk then continue
		load = 1'b1;x0 = 16'h8000; x1 = 16'd0; x2 = 16'd0; x3 = 16'd0; x4 = 16'd0; x5 = 16'd0; x6 = 16'd0; x7 = 16'd0;
						x8 = 16'd0; x9 = 16'd0; x10 = 16'd0; x11 = 16'd0; x12 = 16'd0; x13 = 16'd0; x14 = 16'd0; x15 = 16'd0;
						x16 = 16'd0; x17 = 16'd0; x18 = 16'd0; x19 = 16'd0; x20 = 16'd0; x21 = 16'd0; x22 = 16'd0; x23 = 16'd0;
						x24 = 16'd0; x25 = 16'd0; x26 = 16'd0; x27 = 16'd0; x28 = 16'd0; x29 = 16'd0; x30 = 16'd0; x31 = 16'd0; $display($time, " << Loading value 2 >>");#60;
		load = 1'b1;x0 = 16'h8000; x1 = 16'd0; x2 = 16'd0; x3 = 16'd0; x4 = 16'd0; x5 = 16'd0; x6 = 16'd0; x7 = 16'd0;
						x8 = 16'd0; x9 = 16'd0; x10 = 16'd0; x11 = 16'd0; x12 = 16'd0; x13 = 16'd0; x14 = 16'd0; x15 = 16'd0;
						x16 = 16'd0; x17 = 16'd0; x18 = 16'd0; x19 = 16'd0; x20 = 16'd0; x21 = 16'd0; x22 = 16'd0; x23 = 16'd0;
						x24 = 16'd0; x25 = 16'd0; x26 = 16'd0; x27 = 16'd0; x28 = 16'd0; x29 = 16'd0; x30 = 16'd0; x31 = 16'd0; $display($time, " << Loading value 1 >>");#60;
		
		$display($time, " << Simulation Complete >>");
		$finish;
		// stop the simulation
	end  


endmodule

