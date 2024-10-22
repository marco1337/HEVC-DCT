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
// Generated on "11/22/2017 15:25:52"
                                                                                
// Verilog Test Bench template for design : idct4
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1ns / 100ps
module idct4_test();
// constants                                           
// general purpose registers
reg eachvec;
// test vector input registers
reg clk;
reg load;
reg rst;
reg [15:0] x0;
reg [15:0] x1;
reg [15:0] x2;
reg [15:0] x3;
// wires                                               
wire [21:0]  y0;
wire [21:0]  y1;
wire [21:0]  y2;
wire [21:0]  y3;

// assign statements (if any)                          
idct4 i1 (
// port map - connection between master ports and signals/registers   
	.clk(clk),
	.load(load),
	.rst(rst),
	.x0(x0),
	.x1(x1),
	.x2(x2),
	.x3(x3),
	.y0(y0),
	.y1(y1),
	.y2(y2),
	.y3(y3)
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
		x0 = 16'd0; x1 = 16'd0; x2 = 16'd0; x3 = 16'd0;
		// input data is 00000000
		#4 rst = 1'b0;
		// at time 4 release reset
		$display($time, " << Coming out of reset >>");
		
		@(negedge clk); // wait till the negedge of clk then continue
		load = 1'b1; x0 = 16'h8000; x1 = 16'h0000; x2 = 16'h0000; x3 = 16'h0000; $display($time, " << Loading value 1 >>");#4;
		load = 1'b1; x0 = 16'h8000; x1 = 16'h0000; x2 = 16'h0000; x3 = 16'h0000; $display($time, " << Loading value 2 >>");#4;
		load = 1'b1; x0 = 16'h8000; x1 = 16'h0000; x2 = 16'h0000; x3 = 16'h0000; $display($time, " << Loading value 3 >>");#4;
		load = 1'b1; x0 = 16'h8000; x1 = 16'h0000; x2 = 16'h0000; x3 = 16'h0000; $display($time, " << Loading value 4 >>");#4;
		load = 1'b0; x0 = 16'h8000; x1 = 16'h0000; x2 = 16'h0000; x3 = 16'h0000; $display($time, " << Loading value 5 >>");#4;
		
		$display($time, " << Simulation Complete >>");
		$finish;
		// stop the simulation
	end   
	
endmodule

