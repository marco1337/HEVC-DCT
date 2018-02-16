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
// Generated on "11/16/2017 18:42:52"
                                                                                
// Verilog Test Bench template for design : fsm
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1ns / 100ps
module fsm_test();
// constants                                           
// general purpose registers

// test vector input registers
reg clk;
reg load;
reg rst;
// wires                                               
wire load_1dct;
wire load_2dct;
wire load_trans;
wire unload_trans;

// assign statements (if any)                          
fsm i1 (
// port map - connection between master ports and signals/registers   
	.clk(clk),
	.load(load),
	.load_1dct(load_1dct),
	.load_2dct(load_2dct),
	.load_trans(load_trans),
	.rst(rst),
	.unload_trans(unload_trans)
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
		
		
		#4 rst = 1'b0;
		
		$display($time, " << Coming out of reset >>");
		//load = 1'b1;x0 = 9'h1; x1 = 9'h1; x2 = 9'h1; x3 = 9'h1; x4 = 9'h1; x5 = 9'h1; x6 = 9'h1; x7 = 9'h1;
		@(negedge clk); // wait till the negedge of clk then continue
		load = 1'b1; $display($time, " << Loading value 1 >>");#400;
//		load = 1'b1; $display($time, " << Loading value 2 >>");#4;
//		load = 1'b1; $display($time, " << Loading value 2 >>");#16;
		//load = 1'b1; x0 = 9'b100000000; x1 = 9'b100000000; x2 = 9'b100000000; x3 = 9'b100000000; x4 = 9'b100000000; x5 = 9'b100000000; x6 = 9'b100000000; x7 = 9'b100000000; $display($time, " << Loading value 3 >>");#8;
		//load = 1'b1; x0 = 9'b000000001; x1 = 9'b000000001; x2 = 9'b000000001; x3 = 9'b000000001; x4 = 9'b000000001; x5 = 9'b000000001; x6 = 9'b000000001; x7 = 9'b000000001; $display($time, " << Loading value 4 >>");#8;
		//load = 1'b1; x0 = 9'b100000000; x1 = 9'b100000000; x2 = 9'b100000000; x3 = 9'b100000000; x4 = 9'b100000000; x5 = 9'b100000000; x6 = 9'b100000000; x7 = 9'b100000000; $display($time, " << Loading value 5 >>");#8;
		
		$display($time, " << Simulation Complete >>");
		$finish;
		// stop the simulation
	end
	
endmodule

