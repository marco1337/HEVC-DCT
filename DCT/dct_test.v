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
// Generated on "11/17/2017 09:49:13"
                                                                                
// Verilog Test Bench template for design : dct
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1ns / 100ps
module dct_test();
// constants                                           
// test vector input registers
reg clk;
reg [1:0] size;
reg load;
reg rst;
reg [8:0] x0;
reg [8:0] x1;
reg [8:0] x2;
reg [8:0] x3;
reg [8:0] x4;
reg [8:0] x5;
reg [8:0] x6;
reg [8:0] x7;
reg [8:0] x8;
reg [8:0] x9;
reg [8:0] x10;
reg [8:0] x11;
reg [8:0] x12;
reg [8:0] x13;
reg [8:0] x14;
reg [8:0] x15;
reg [8:0] x16;
reg [8:0] x17;
reg [8:0] x18;
reg [8:0] x19;
reg [8:0] x20;
reg [8:0] x21;
reg [8:0] x22;
reg [8:0] x23;
reg [8:0] x24;
reg [8:0] x25;
reg [8:0] x26;
reg [8:0] x27;
reg [8:0] x28;
reg [8:0] x29;
reg [8:0] x30;
reg [8:0] x31;
// wires                                               
wire [15:0]  y0;
wire [15:0]  y1;
wire [15:0]  y2;
wire [15:0]  y3;
wire [15:0]  y4;
wire [15:0]  y5;
wire [15:0]  y6;
wire [15:0]  y7;
wire [15:0]  y8;
wire [15:0]  y9;
wire [15:0]  y10;
wire [15:0]  y11;
wire [15:0]  y12;
wire [15:0]  y13;
wire [15:0]  y14;
wire [15:0]  y15;
wire [15:0]  y16;
wire [15:0]  y17;
wire [15:0]  y18;
wire [15:0]  y19;
wire [15:0]  y20;
wire [15:0]  y21;
wire [15:0]  y22;
wire [15:0]  y23;
wire [15:0]  y24;
wire [15:0]  y25;
wire [15:0]  y26;
wire [15:0]  y27;
wire [15:0]  y28;
wire [15:0]  y29;
wire [15:0]  y30;
wire [15:0]  y31;

// assign statements (if any)                          
dct i1 (
// port map - connection between master ports and signals/registers   
	.clk(clk),
	.size(size),
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
		load = 1'b0;size = 2'b00;
		// load disabled
		x0 = 9'h0; x1 = 9'h0; x2 = 9'h0; x3 = 9'h0; x4 = 9'h0; x5 = 9'h0; x6 = 9'h0; x7 = 9'h0;
		x8 = 9'h0; x9 = 9'h0; x10 = 9'h0; x11 = 9'h0; x12 = 9'h0; x13 = 9'h0; x14 = 9'h0; x15 = 9'h0;
		x16 = 9'h0; x17 = 9'h0; x18 = 9'h0; x19 = 9'h0; x20 = 9'h0; x21 = 9'h0; x22 = 9'h0; x23 = 9'h0;
		x24 = 9'h0; x25 = 9'h0; x26 = 9'h0; x27 = 9'h0; x28 = 9'h0; x29 = 9'h0; x30 = 9'h0; x31 = 9'h0;
		
		#4 rst = 1'b0;
		
		$display($time, " << Coming out of reset >>");
		//load = 1'b1;x0 = 9'h1; x1 = 9'h1; x2 = 9'h1; x3 = 9'h1; x4 = 9'h1; x5 = 9'h1; x6 = 9'h1; x7 = 9'h1;
		@(negedge clk); // wait till the negedge of clk then continue
		size = 2'b11;load = 1'b1;x0 = 9'h0; x1 = 9'h0; x2 = 9'h0; x3 = 9'h0; x4 = 9'h0; x5 = 9'h0; x6 = 9'h0; x7 = 9'h0;
										 x8 = 9'h0; x9 = 9'h0; x10 = 9'h0; x11 = 9'h0; x12 = 9'h0; x13 = 9'h0; x14 = 9'h0; x15 = 9'h0; 
										 x16 = 9'h0; x17 = 9'h0; x18 = 9'h0; x19 = 9'h0; x20 = 9'h0; x21 = 9'h0; x22 = 9'h0; x23 = 9'h0;
										 x24 = 9'h0; x25 = 9'h0; x26 = 9'h0; x27 = 9'h0; x28 = 9'h0; x29 = 9'h0; x30 = 9'h0; x31 = 9'h0;$display($time, " << Loading value 0 >>");#3;
						
//		size = 2'b11;load = 1'b1;x0 = 9'h100; x1 = 9'h100; x2 = 9'h100; x3 = 9'h100; x4 = 9'h100; x5 = 9'h100; x6 = 9'h100; x7 = 9'h100;
//										 x8 = 9'h100; x9 = 9'h100; x10 = 9'h100; x11 = 9'h100; x12 = 9'h100; x13 = 9'h100; x14 = 9'h100; x15 = 9'h100;
//										 x16 = 9'h100; x17 = 9'h100; x18 = 9'h100; x19 = 9'h100; x20 = 9'h100; x21 = 9'h100; x22 = 9'h100; x23 = 9'h100;
//										 x24 = 9'h100; x25 = 9'h100; x26 = 9'h100; x27 = 9'h100; x28 = 9'h100; x29 = 9'h100; x30 = 9'h100; x31 = 9'h100;$display($time, " << Loading value 1 >>");#129;
//		
//		size = 2'b11;load = 1'b1;x0 = 9'h0; x1 = 9'h0; x2 = 9'h0; x3 = 9'h0; x4 = 9'h0; x5 = 9'h0; x6 = 9'h0; x7 = 9'h0;
//										 x8 = 9'h0; x9 = 9'h0; x10 = 9'h0; x11 = 9'h0; x12 = 9'h0; x13 = 9'h0; x14 = 9'h0; x15 = 9'h0; 
//										 x16 = 9'h0; x17 = 9'h0; x18 = 9'h0; x19 = 9'h0; x20 = 9'h0; x21 = 9'h0; x22 = 9'h0; x23 = 9'h0;
//										 x24 = 9'h0; x25 = 9'h0; x26 = 9'h0; x27 = 9'h0; x28 = 9'h0; x29 = 9'h0; x30 = 9'h0; x31 = 9'h0;$display($time, " << Loading value 0 >>");#600; 
		
		//Columna: 0
		x0 = 16'd169;x1 = 16'd158;x2 = 16'd167;x3 = 16'd176;x4 = 16'd149;x5 = 16'd104;x6 = 16'd86;x7 = 16'd91;x8 = 16'd102;x9 = 16'd95;x10 = 16'd94;x11 = 16'd102;x12 = 16'd109;x13 = 16'd108;x14 = 16'd103;x15 = 16'd100;x16 = 16'd104;x17 = 16'd89;x18 = 16'd79;x19 = 16'd77;x20 = 16'd78;x21 = 16'd70;x22 = 16'd53;x23 = 16'd45;x24 = 16'd61;x25 = 16'd127;x26 = 16'd146;x27 = 16'd103;x28 = 16'd84;x29 = 16'd108;x30 = 16'd114;x31 = 16'd93;#4;
		//Columna: 1
		x0 = 16'd157;x1 = 16'd164;x2 = 16'd165;x3 = 16'd142;x4 = 16'd107;x5 = 16'd92;x6 = 16'd99;x7 = 16'd107;x8 = 16'd105;x9 = 16'd110;x10 = 16'd116;x11 = 16'd116;x12 = 16'd109;x13 = 16'd102;x14 = 16'd102;x15 = 16'd105;x16 = 16'd95;x17 = 16'd95;x18 = 16'd73;x19 = 16'd61;x20 = 16'd83;x21 = 16'd95;x22 = 16'd91;x23 = 16'd95;x24 = 16'd68;x25 = 16'd86;x26 = 16'd111;x27 = 16'd131;x28 = 16'd138;x29 = 16'd135;x30 = 16'd147;x31 = 16'd171;#4;
		//Columna: 2
		x0 = 16'd182;x1 = 16'd178;x2 = 16'd173;x3 = 16'd169;x4 = 16'd169;x5 = 16'd179;x6 = 16'd184;x7 = 16'd177;x8 = 16'd182;x9 = 16'd184;x10 = 16'd185;x11 = 16'd183;x12 = 16'd181;x13 = 16'd181;x14 = 16'd182;x15 = 16'd182;x16 = 16'd176;x17 = 16'd187;x18 = 16'd177;x19 = 16'd170;x20 = 16'd183;x21 = 16'd187;x22 = 16'd186;x23 = 16'd190;x24 = 16'd171;x25 = 16'd156;x26 = 16'd144;x27 = 16'd147;x28 = 16'd148;x29 = 16'd142;x30 = 16'd153;x31 = 16'd179;#4;
		//Columna: 3
		x0 = 16'd148;x1 = 16'd134;x2 = 16'd131;x3 = 16'd140;x4 = 16'd145;x5 = 16'd146;x6 = 16'd142;x7 = 16'd135;x8 = 16'd142;x9 = 16'd147;x10 = 16'd148;x11 = 16'd147;x12 = 16'd149;x13 = 16'd155;x14 = 16'd158;x15 = 16'd156;x16 = 16'd164;x17 = 16'd162;x18 = 16'd161;x19 = 16'd163;x20 = 16'd159;x21 = 16'd160;x22 = 16'd169;x23 = 16'd166;x24 = 16'd181;x25 = 16'd190;x26 = 16'd190;x27 = 16'd187;x28 = 16'd192;x29 = 16'd194;x30 = 16'd182;x31 = 16'd171;#4;
		//Columna: 4
		x0 = 16'd103;x1 = 16'd96;x2 = 16'd92;x3 = 16'd85;x4 = 16'd76;x5 = 16'd75;x6 = 16'd78;x7 = 16'd77;x8 = 16'd75;x9 = 16'd85;x10 = 16'd90;x11 = 16'd85;x12 = 16'd78;x13 = 16'd77;x14 = 16'd80;x15 = 16'd81;x16 = 16'd79;x17 = 16'd94;x18 = 16'd96;x19 = 16'd99;x20 = 16'd100;x21 = 16'd103;x22 = 16'd104;x23 = 16'd88;x24 = 16'd84;x25 = 16'd80;x26 = 16'd72;x27 = 16'd69;x28 = 16'd70;x29 = 16'd64;x30 = 16'd57;x31 = 16'd59;#4;
		//Columna: 5
		x0 = 16'd111;x1 = 16'd102;x2 = 16'd97;x3 = 16'd98;x4 = 16'd99;x5 = 16'd103;x6 = 16'd101;x7 = 16'd93;x8 = 16'd102;x9 = 16'd97;x10 = 16'd92;x11 = 16'd90;x12 = 16'd93;x13 = 16'd99;x14 = 16'd100;x15 = 16'd98;x16 = 16'd81;x17 = 16'd119;x18 = 16'd116;x19 = 16'd102;x20 = 16'd100;x21 = 16'd91;x22 = 16'd79;x23 = 16'd62;x24 = 16'd55;x25 = 16'd42;x26 = 16'd32;x27 = 16'd36;x28 = 16'd40;x29 = 16'd35;x30 = 16'd43;x31 = 16'd65;#4;
		//Columna: 6
		x0 = 16'd116;x1 = 16'd106;x2 = 16'd106;x3 = 16'd111;x4 = 16'd110;x5 = 16'd107;x6 = 16'd104;x7 = 16'd98;x8 = 16'd94;x9 = 16'd87;x10 = 16'd81;x11 = 16'd83;x12 = 16'd91;x13 = 16'd98;x14 = 16'd102;x15 = 16'd104;x16 = 16'd124;x17 = 16'd118;x18 = 16'd92;x19 = 16'd81;x20 = 16'd66;x21 = 16'd54;x22 = 16'd65;x23 = 16'd63;x24 = 16'd78;x25 = 16'd74;x26 = 16'd68;x27 = 16'd66;x28 = 16'd64;x29 = 16'd57;x30 = 16'd59;x31 = 16'd73;#4;
		//Columna: 7
		x0 = 16'd129;x1 = 16'd126;x2 = 16'd125;x3 = 16'd119;x4 = 16'd111;x5 = 16'd115;x6 = 16'd128;x7 = 16'd134;x8 = 16'd140;x9 = 16'd153;x10 = 16'd163;x11 = 16'd155;x12 = 16'd130;x13 = 16'd112;x14 = 16'd118;x15 = 16'd133;x16 = 16'd165;x17 = 16'd94;x18 = 16'd72;x19 = 16'd107;x20 = 16'd93;x21 = 16'd80;x22 = 16'd108;x23 = 16'd103;x24 = 16'd90;x25 = 16'd74;x26 = 16'd55;x27 = 16'd46;x28 = 16'd45;x29 = 16'd49;x30 = 16'd68;x31 = 16'd95;#4;
		//Columna: 8
		x0 = 16'd138;x1 = 16'd131;x2 = 16'd128;x3 = 16'd129;x4 = 16'd122;x5 = 16'd126;x6 = 16'd114;x7 = 16'd124;x8 = 16'd119;x9 = 16'd149;x10 = 16'd170;x11 = 16'd184;x12 = 16'd191;x13 = 16'd170;x14 = 16'd139;x15 = 16'd120;x16 = 16'd71;x17 = 16'd65;x18 = 16'd62;x19 = 16'd66;x20 = 16'd106;x21 = 16'd92;x22 = 16'd88;x23 = 16'd122;x24 = 16'd118;x25 = 16'd91;x26 = 16'd63;x27 = 16'd58;x28 = 16'd58;x29 = 16'd60;x30 = 16'd56;x31 = 16'd87;#4;
		//Columna: 9
		x0 = 16'd139;x1 = 16'd129;x2 = 16'd125;x3 = 16'd129;x4 = 16'd121;x5 = 16'd119;x6 = 16'd104;x7 = 16'd109;x8 = 16'd104;x9 = 16'd86;x10 = 16'd103;x11 = 16'd127;x12 = 16'd120;x13 = 16'd130;x14 = 16'd135;x15 = 16'd96;x16 = 16'd69;x17 = 16'd89;x18 = 16'd60;x19 = 16'd39;x20 = 16'd42;x21 = 16'd119;x22 = 16'd162;x23 = 16'd127;x24 = 16'd113;x25 = 16'd129;x26 = 16'd122;x27 = 16'd104;x28 = 16'd97;x29 = 16'd108;x30 = 16'd92;x31 = 16'd92;#4;
		//Columna: 10
		x0 = 16'd139;x1 = 16'd134;x2 = 16'd129;x3 = 16'd128;x4 = 16'd117;x5 = 16'd120;x6 = 16'd114;x7 = 16'd121;x8 = 16'd119;x9 = 16'd125;x10 = 16'd130;x11 = 16'd116;x12 = 16'd130;x13 = 16'd134;x14 = 16'd84;x15 = 16'd51;x16 = 16'd80;x17 = 16'd93;x18 = 16'd102;x19 = 16'd74;x20 = 16'd78;x21 = 16'd168;x22 = 16'd144;x23 = 16'd49;x24 = 16'd73;x25 = 16'd113;x26 = 16'd136;x27 = 16'd131;x28 = 16'd101;x29 = 16'd79;x30 = 16'd61;x31 = 16'd75;#4;
		//Columna: 11
		x0 = 16'd139;x1 = 16'd135;x2 = 16'd129;x3 = 16'd131;x4 = 16'd120;x5 = 16'd128;x6 = 16'd129;x7 = 16'd133;x8 = 16'd126;x9 = 16'd143;x10 = 16'd138;x11 = 16'd135;x12 = 16'd133;x13 = 16'd83;x14 = 16'd40;x15 = 16'd59;x16 = 16'd49;x17 = 16'd28;x18 = 16'd42;x19 = 16'd104;x20 = 16'd143;x21 = 16'd71;x22 = 16'd31;x23 = 16'd45;x24 = 16'd47;x25 = 16'd62;x26 = 16'd74;x27 = 16'd81;x28 = 16'd53;x29 = 16'd25;x30 = 16'd30;x31 = 16'd76;#4;
		//Columna: 12
		x0 = 16'd139;x1 = 16'd127;x2 = 16'd125;x3 = 16'd143;x4 = 16'd135;x5 = 16'd132;x6 = 16'd129;x7 = 16'd134;x8 = 16'd148;x9 = 16'd147;x10 = 16'd141;x11 = 16'd151;x12 = 16'd102;x13 = 16'd50;x14 = 16'd62;x15 = 16'd51;x16 = 16'd31;x17 = 16'd54;x18 = 16'd129;x19 = 16'd142;x20 = 16'd73;x21 = 16'd23;x22 = 16'd51;x23 = 16'd49;x24 = 16'd47;x25 = 16'd46;x26 = 16'd36;x27 = 16'd49;x28 = 16'd54;x29 = 16'd61;x30 = 16'd81;x31 = 16'd120;#4;
		//Columna: 13
		x0 = 16'd139;x1 = 16'd122;x2 = 16'd127;x3 = 16'd164;x4 = 16'd153;x5 = 16'd135;x6 = 16'd142;x7 = 16'd163;x8 = 16'd171;x9 = 16'd168;x10 = 16'd155;x11 = 16'd107;x12 = 16'd68;x13 = 16'd60;x14 = 16'd50;x15 = 16'd44;x16 = 16'd113;x17 = 16'd180;x18 = 16'd140;x19 = 16'd48;x20 = 16'd44;x21 = 16'd86;x22 = 16'd55;x23 = 16'd59;x24 = 16'd52;x25 = 16'd60;x26 = 16'd60;x27 = 16'd84;x28 = 16'd92;x29 = 16'd94;x30 = 16'd107;x31 = 16'd138;#4;
		//Columna: 14
		x0 = 16'd140;x1 = 16'd122;x2 = 16'd131;x3 = 16'd179;x4 = 16'd175;x5 = 16'd160;x6 = 16'd172;x7 = 16'd195;x8 = 16'd184;x9 = 16'd176;x10 = 16'd150;x11 = 16'd79;x12 = 16'd51;x13 = 16'd56;x14 = 16'd72;x15 = 16'd151;x16 = 16'd223;x17 = 16'd152;x18 = 16'd90;x19 = 16'd121;x20 = 16'd130;x21 = 16'd129;x22 = 16'd105;x23 = 16'd57;x24 = 16'd51;x25 = 16'd71;x26 = 16'd79;x27 = 16'd106;x28 = 16'd112;x29 = 16'd110;x30 = 16'd121;x31 = 16'd147;#4;
		//Columna: 15
		x0 = 16'd142;x1 = 16'd122;x2 = 16'd127;x3 = 16'd183;x4 = 16'd197;x5 = 16'd193;x6 = 16'd192;x7 = 16'd190;x8 = 16'd179;x9 = 16'd176;x10 = 16'd151;x11 = 16'd110;x12 = 16'd44;x13 = 16'd52;x14 = 16'd158;x15 = 16'd213;x16 = 16'd91;x17 = 16'd123;x18 = 16'd176;x19 = 16'd156;x20 = 16'd135;x21 = 16'd144;x22 = 16'd144;x23 = 16'd95;x24 = 16'd94;x25 = 16'd118;x26 = 16'd109;x27 = 16'd117;x28 = 16'd132;x29 = 16'd150;x30 = 16'd146;x31 = 16'd136;#4;
		//Columna: 16
		x0 = 16'd140;x1 = 16'd129;x2 = 16'd115;x3 = 16'd160;x4 = 16'd206;x5 = 16'd201;x6 = 16'd198;x7 = 16'd199;x8 = 16'd184;x9 = 16'd177;x10 = 16'd156;x11 = 16'd61;x12 = 16'd68;x13 = 16'd162;x14 = 16'd210;x15 = 16'd126;x16 = 16'd61;x17 = 16'd154;x18 = 16'd186;x19 = 16'd171;x20 = 16'd160;x21 = 16'd141;x22 = 16'd132;x23 = 16'd138;x24 = 16'd132;x25 = 16'd147;x26 = 16'd139;x27 = 16'd146;x28 = 16'd148;x29 = 16'd137;x30 = 16'd146;x31 = 16'd143;#4;
		//Columna: 17
		x0 = 16'd127;x1 = 16'd131;x2 = 16'd124;x3 = 16'd116;x4 = 16'd187;x5 = 16'd239;x6 = 16'd204;x7 = 16'd200;x8 = 16'd197;x9 = 16'd186;x10 = 16'd133;x11 = 16'd64;x12 = 16'd169;x13 = 16'd204;x14 = 16'd166;x15 = 16'd92;x16 = 16'd94;x17 = 16'd162;x18 = 16'd177;x19 = 16'd152;x20 = 16'd149;x21 = 16'd129;x22 = 16'd119;x23 = 16'd165;x24 = 16'd151;x25 = 16'd131;x26 = 16'd144;x27 = 16'd140;x28 = 16'd129;x29 = 16'd141;x30 = 16'd146;x31 = 16'd153;#4;
		//Columna: 18
		x0 = 16'd135;x1 = 16'd144;x2 = 16'd127;x3 = 16'd104;x4 = 16'd130;x5 = 16'd207;x6 = 16'd240;x7 = 16'd202;x8 = 16'd188;x9 = 16'd188;x10 = 16'd150;x11 = 16'd173;x12 = 16'd199;x13 = 16'd169;x14 = 16'd170;x15 = 16'd164;x16 = 16'd122;x17 = 16'd135;x18 = 16'd123;x19 = 16'd98;x20 = 16'd132;x21 = 16'd159;x22 = 16'd147;x23 = 16'd174;x24 = 16'd174;x25 = 16'd162;x26 = 16'd162;x27 = 16'd158;x28 = 16'd150;x29 = 16'd141;x30 = 16'd136;x31 = 16'd155;#4;
		//Columna: 19
		x0 = 16'd121;x1 = 16'd111;x2 = 16'd115;x3 = 16'd125;x4 = 16'd80;x5 = 16'd85;x6 = 16'd186;x7 = 16'd239;x8 = 16'd201;x9 = 16'd175;x10 = 16'd174;x11 = 16'd201;x12 = 16'd180;x13 = 16'd200;x14 = 16'd200;x15 = 16'd203;x16 = 16'd185;x17 = 16'd182;x18 = 16'd188;x19 = 16'd176;x20 = 16'd183;x21 = 16'd187;x22 = 16'd130;x23 = 16'd86;x24 = 16'd160;x25 = 16'd218;x26 = 16'd173;x27 = 16'd150;x28 = 16'd164;x29 = 16'd141;x30 = 16'd144;x31 = 16'd152;#4;
		//Columna: 20
		x0 = 16'd134;x1 = 16'd110;x2 = 16'd117;x3 = 16'd116;x4 = 16'd106;x5 = 16'd85;x6 = 16'd93;x7 = 16'd169;x8 = 16'd207;x9 = 16'd180;x10 = 16'd189;x11 = 16'd207;x12 = 16'd178;x13 = 16'd198;x14 = 16'd242;x15 = 16'd198;x16 = 16'd102;x17 = 16'd134;x18 = 16'd183;x19 = 16'd183;x20 = 16'd144;x21 = 16'd99;x22 = 16'd46;x23 = 16'd19;x24 = 16'd85;x25 = 16'd217;x26 = 16'd222;x27 = 16'd190;x28 = 16'd188;x29 = 16'd171;x30 = 16'd167;x31 = 16'd151;#4;
		//Columna: 21
		x0 = 16'd167;x1 = 16'd163;x2 = 16'd146;x3 = 16'd135;x4 = 16'd158;x5 = 16'd174;x6 = 16'd151;x7 = 16'd132;x8 = 16'd161;x9 = 16'd196;x10 = 16'd208;x11 = 16'd204;x12 = 16'd117;x13 = 16'd82;x14 = 16'd139;x15 = 16'd97;x16 = 16'd41;x17 = 16'd73;x18 = 16'd90;x19 = 16'd80;x20 = 16'd58;x21 = 16'd37;x22 = 16'd43;x23 = 16'd73;x24 = 16'd37;x25 = 16'd139;x26 = 16'd234;x27 = 16'd239;x28 = 16'd217;x29 = 16'd200;x30 = 16'd185;x31 = 16'd183;#4;
		//Columna: 22
		x0 = 16'd160;x1 = 16'd168;x2 = 16'd156;x3 = 16'd161;x4 = 16'd139;x5 = 16'd119;x6 = 16'd138;x7 = 16'd124;x8 = 16'd149;x9 = 16'd210;x10 = 16'd222;x11 = 16'd164;x12 = 16'd127;x13 = 16'd110;x14 = 16'd56;x15 = 16'd71;x16 = 16'd71;x17 = 16'd80;x18 = 16'd72;x19 = 16'd59;x20 = 16'd59;x21 = 16'd55;x22 = 16'd55;x23 = 16'd70;x24 = 16'd68;x25 = 16'd43;x26 = 16'd88;x27 = 16'd156;x28 = 16'd209;x29 = 16'd234;x30 = 16'd227;x31 = 16'd220;#4;
		//Columna: 23
		x0 = 16'd161;x1 = 16'd158;x2 = 16'd159;x3 = 16'd156;x4 = 16'd146;x5 = 16'd89;x6 = 16'd30;x7 = 16'd47;x8 = 16'd195;x9 = 16'd228;x10 = 16'd191;x11 = 16'd147;x12 = 16'd144;x13 = 16'd69;x14 = 16'd78;x15 = 16'd89;x16 = 16'd98;x17 = 16'd84;x18 = 16'd84;x19 = 16'd84;x20 = 16'd86;x21 = 16'd99;x22 = 16'd107;x23 = 16'd110;x24 = 16'd117;x25 = 16'd110;x26 = 16'd90;x27 = 16'd106;x28 = 16'd119;x29 = 16'd124;x30 = 16'd163;x31 = 16'd192;#4;
		//Columna: 24
		x0 = 16'd150;x1 = 16'd141;x2 = 16'd163;x3 = 16'd143;x4 = 16'd146;x5 = 16'd151;x6 = 16'd106;x7 = 16'd174;x8 = 16'd239;x9 = 16'd209;x10 = 16'd177;x11 = 16'd129;x12 = 16'd65;x13 = 16'd31;x14 = 16'd33;x15 = 16'd36;x16 = 16'd26;x17 = 16'd41;x18 = 16'd62;x19 = 16'd96;x20 = 16'd140;x21 = 16'd168;x22 = 16'd171;x23 = 16'd169;x24 = 16'd138;x25 = 16'd151;x26 = 16'd170;x27 = 16'd170;x28 = 16'd116;x29 = 16'd64;x30 = 16'd76;x31 = 16'd98;#4;
		//Columna: 25
		x0 = 16'd210;x1 = 16'd164;x2 = 16'd130;x3 = 16'd137;x4 = 16'd138;x5 = 16'd148;x6 = 16'd176;x7 = 16'd228;x8 = 16'd235;x9 = 16'd179;x10 = 16'd112;x11 = 16'd57;x12 = 16'd27;x13 = 16'd34;x14 = 16'd59;x15 = 16'd72;x16 = 16'd118;x17 = 16'd139;x18 = 16'd162;x19 = 16'd173;x20 = 16'd168;x21 = 16'd153;x22 = 16'd150;x23 = 16'd161;x24 = 16'd122;x25 = 16'd130;x26 = 16'd136;x27 = 16'd135;x28 = 16'd136;x29 = 16'd61;x30 = 16'd77;x31 = 16'd130;#4;
		//Columna: 26
		x0 = 16'd175;x1 = 16'd221;x2 = 16'd202;x3 = 16'd134;x4 = 16'd151;x5 = 16'd163;x6 = 16'd75;x7 = 16'd63;x8 = 16'd78;x9 = 16'd45;x10 = 16'd23;x11 = 16'd29;x12 = 16'd61;x13 = 16'd99;x14 = 16'd140;x15 = 16'd170;x16 = 16'd167;x17 = 16'd165;x18 = 16'd158;x19 = 16'd153;x20 = 16'd150;x21 = 16'd147;x22 = 16'd150;x23 = 16'd158;x24 = 16'd120;x25 = 16'd95;x26 = 16'd124;x27 = 16'd135;x28 = 16'd142;x29 = 16'd177;x30 = 16'd145;x31 = 16'd123;#4;
		//Columna: 27
		x0 = 16'd102;x1 = 16'd132;x2 = 16'd195;x3 = 16'd232;x4 = 16'd147;x5 = 16'd43;x6 = 16'd32;x7 = 16'd38;x8 = 16'd25;x9 = 16'd39;x10 = 16'd74;x11 = 16'd126;x12 = 16'd168;x13 = 16'd176;x14 = 16'd167;x15 = 16'd166;x16 = 16'd155;x17 = 16'd154;x18 = 16'd145;x19 = 16'd135;x20 = 16'd133;x21 = 16'd133;x22 = 16'd127;x23 = 16'd121;x24 = 16'd119;x25 = 16'd100;x26 = 16'd198;x27 = 16'd223;x28 = 16'd216;x29 = 16'd179;x30 = 16'd115;x31 = 16'd96;#4;
		//Columna: 28
		x0 = 16'd133;x1 = 16'd108;x2 = 16'd111;x3 = 16'd134;x4 = 16'd61;x5 = 16'd26;x6 = 16'd46;x7 = 16'd28;x8 = 16'd59;x9 = 16'd120;x10 = 16'd172;x11 = 16'd185;x12 = 16'd177;x13 = 16'd163;x14 = 16'd157;x15 = 16'd162;x16 = 16'd161;x17 = 16'd143;x18 = 16'd133;x19 = 16'd141;x20 = 16'd157;x21 = 16'd171;x22 = 16'd182;x23 = 16'd189;x24 = 16'd195;x25 = 16'd221;x26 = 16'd216;x27 = 16'd183;x28 = 16'd159;x29 = 16'd82;x30 = 16'd55;x31 = 16'd83;#4;
		//Columna: 29
		x0 = 16'd135;x1 = 16'd143;x2 = 16'd90;x3 = 16'd27;x4 = 16'd35;x5 = 16'd50;x6 = 16'd37;x7 = 16'd101;x8 = 16'd165;x9 = 16'd173;x10 = 16'd167;x11 = 16'd156;x12 = 16'd160;x13 = 16'd164;x14 = 16'd157;x15 = 16'd149;x16 = 16'd150;x17 = 16'd137;x18 = 16'd151;x19 = 16'd190;x20 = 16'd213;x21 = 16'd216;x22 = 16'd222;x23 = 16'd231;x24 = 16'd236;x25 = 16'd165;x26 = 16'd103;x27 = 16'd91;x28 = 16'd71;x29 = 16'd73;x30 = 16'd92;x31 = 16'd119;#4;
		//Columna: 30
		x0 = 16'd150;x1 = 16'd91;x2 = 16'd35;x3 = 16'd43;x4 = 16'd42;x5 = 16'd58;x6 = 16'd116;x7 = 16'd176;x8 = 16'd173;x9 = 16'd164;x10 = 16'd151;x11 = 16'd149;x12 = 16'd158;x13 = 16'd162;x14 = 16'd154;x15 = 16'd146;x16 = 16'd142;x17 = 16'd164;x18 = 16'd198;x19 = 16'd216;x20 = 16'd210;x21 = 16'd205;x22 = 16'd215;x23 = 16'd225;x24 = 16'd134;x25 = 16'd43;x26 = 16'd88;x27 = 16'd101;x28 = 16'd99;x29 = 16'd103;x30 = 16'd112;x31 = 16'd88;#4;
		//Columna: 31
		x0 = 16'd113;x1 = 16'd33;x2 = 16'd53;x3 = 16'd62;x4 = 16'd59;x5 = 16'd148;x6 = 16'd179;x7 = 16'd170;x8 = 16'd156;x9 = 16'd161;x10 = 16'd163;x11 = 16'd162;x12 = 16'd162;x13 = 16'd163;x14 = 16'd157;x15 = 16'd148;x16 = 16'd140;x17 = 16'd181;x18 = 16'd213;x19 = 16'd210;x20 = 16'd208;x21 = 16'd225;x22 = 16'd221;x23 = 16'd192;x24 = 16'd62;x25 = 16'd89;x26 = 16'd115;x27 = 16'd103;x28 = 16'd102;x29 = 16'd88;x30 = 16'd62;x31 = 16'd83;#200;
				
		
		$display($time, " << Simulation Complete >>");
		$finish;
		// stop the simulation
	end      
	
endmodule

