module dct
#(
parameter	WIDTH_X = 9,
parameter	WIDTH_Y = 21,
parameter 	WIDTH_X2 = 16,
parameter   WIDTH_Y2 = 28,
parameter   WIDTH_YOUT = 16,
parameter   IDLE = 3'b000,
parameter   ONE_DCT = 3'b001,
parameter   LOAD_TRANS = 3'b010,
parameter   UNLOAD_TRANS = 3'b011,
parameter   TWO_DCT = 3'b100
)
(	
	
	input wire signed [WIDTH_X-1:0] x0,
	input wire signed [WIDTH_X-1:0] x1,
	input wire signed [WIDTH_X-1:0] x2,
	input wire signed [WIDTH_X-1:0] x3,
	input wire signed [WIDTH_X-1:0] x4,
	input wire signed [WIDTH_X-1:0] x5,
	input wire signed [WIDTH_X-1:0] x6,
	input wire signed [WIDTH_X-1:0] x7,
	input wire signed [WIDTH_X-1:0] x8,
	input wire signed [WIDTH_X-1:0] x9,
	input wire signed [WIDTH_X-1:0] x10,
	input wire signed [WIDTH_X-1:0] x11,
	input wire signed [WIDTH_X-1:0] x12,
	input wire signed [WIDTH_X-1:0] x13,
	input wire signed [WIDTH_X-1:0] x14,
	input wire signed [WIDTH_X-1:0] x15,
	input wire signed [WIDTH_X-1:0] x16,
	input wire signed [WIDTH_X-1:0] x17,
	input wire signed [WIDTH_X-1:0] x18,
	input wire signed [WIDTH_X-1:0] x19,
	input wire signed [WIDTH_X-1:0] x20,
	input wire signed [WIDTH_X-1:0] x21,
	input wire signed [WIDTH_X-1:0] x22,
	input wire signed [WIDTH_X-1:0] x23,
	input wire signed [WIDTH_X-1:0] x24,
	input wire signed [WIDTH_X-1:0] x25,
	input wire signed [WIDTH_X-1:0] x26,
	input wire signed [WIDTH_X-1:0] x27,
	input wire signed [WIDTH_X-1:0] x28,
	input wire signed [WIDTH_X-1:0] x29,
	input wire signed [WIDTH_X-1:0] x30,
	input wire signed [WIDTH_X-1:0] x31,
	
	input wire clk,rst,
	input wire load,
	input wire [1:0] size,
	
	output wire signed [WIDTH_YOUT-1:0] y0,
	output wire signed [WIDTH_YOUT-1:0] y1,
	output wire signed [WIDTH_YOUT-1:0] y2,
	output wire signed [WIDTH_YOUT-1:0] y3,
	output wire signed [WIDTH_YOUT-1:0] y4,
	output wire signed [WIDTH_YOUT-1:0] y5,
	output wire signed [WIDTH_YOUT-1:0] y6,
	output wire signed [WIDTH_YOUT-1:0] y7,
	output wire signed [WIDTH_YOUT-1:0] y8,
	output wire signed [WIDTH_YOUT-1:0] y9,
	output wire signed [WIDTH_YOUT-1:0] y10,
	output wire signed [WIDTH_YOUT-1:0] y11,
	output wire signed [WIDTH_YOUT-1:0] y12,
	output wire signed [WIDTH_YOUT-1:0] y13,
	output wire signed [WIDTH_YOUT-1:0] y14,
	output wire signed [WIDTH_YOUT-1:0] y15,
	output wire signed [WIDTH_YOUT-1:0] y16,
	output wire signed [WIDTH_YOUT-1:0] y17,
	output wire signed [WIDTH_YOUT-1:0] y18,
	output wire signed [WIDTH_YOUT-1:0] y19,
	output wire signed [WIDTH_YOUT-1:0] y20,
	output wire signed [WIDTH_YOUT-1:0] y21,
	output wire signed [WIDTH_YOUT-1:0] y22,
	output wire signed [WIDTH_YOUT-1:0] y23,
	output wire signed [WIDTH_YOUT-1:0] y24,
	output wire signed [WIDTH_YOUT-1:0] y25,
	output wire signed [WIDTH_YOUT-1:0] y26,
	output wire signed [WIDTH_YOUT-1:0] y27,
	output wire signed [WIDTH_YOUT-1:0] y28,
	output wire signed [WIDTH_YOUT-1:0] y29,
	output wire signed [WIDTH_YOUT-1:0] y30,
	output wire signed [WIDTH_YOUT-1:0] y31
	
); 

	wire signed [WIDTH_Y-1:0] outEtapa1 [31:0];
	wire signed [WIDTH_Y-1:0] inEtapa2 [31:0];
	wire signed [WIDTH_Y-1:0] outScaling1 [31:0];
	wire signed [WIDTH_Y2-1:0] outScaling2 [31:0];
	
	wire signed [WIDTH_Y2-1:0] outEtapa2 [31:0];
	
	wire load_1dct;
	wire load_trans;
	wire unload_trans;
	wire load_2dct;
	
	fsm fsm1
	(
	.clk (clk),
	.rst (rst),
	.load (load),
	.load_1dct (load_1dct),
	.load_trans (load_trans),
	.unload_trans (unload_trans),
	.load_2dct (load_2dct)
	);
	

	dct32
	#(
		.WIDTH_X (WIDTH_X),
		.WIDTH_Y (WIDTH_Y)
	)
	dct32_etapa1
	(
		.clk (clk),
		.rst (rst),
		.load (load_1dct),
		.x0 (x0),
		.x1 (x1),
		.x2 (x2),
		.x3 (x3),
		.x4 (x4),
		.x5 (x5),
		.x6 (x6),
		.x7 (x7),
		.x8 (x8),
		.x9 (x9),
		.x10 (x10),
		.x11 (x11),
		.x12 (x12),
		.x13 (x13),
		.x14 (x14),
		.x15 (x15),
		.x16 (x16),
		.x17 (x17),
		.x18 (x18),
		.x19 (x19),
		.x20 (x20),
		.x21 (x21),
		.x22 (x22),
		.x23 (x23),
		.x24 (x24),
		.x25 (x25),
		.x26 (x26),
		.x27 (x27),
		.x28 (x28),
		.x29 (x29),
		.x30 (x30),
		.x31 (x31),
		.y0 (outEtapa1[0]),
		.y1 (outEtapa1[1]),
		.y2 (outEtapa1[2]),
		.y3 (outEtapa1[3]),
		.y4 (outEtapa1[4]),
		.y5 (outEtapa1[5]),
		.y6 (outEtapa1[6]),
		.y7 (outEtapa1[7]),
		.y8 (outEtapa1[8]),
		.y9 (outEtapa1[9]),
		.y10 (outEtapa1[10]),
		.y11 (outEtapa1[11]),
		.y12 (outEtapa1[12]),
		.y13 (outEtapa1[13]),
		.y14 (outEtapa1[14]),
		.y15 (outEtapa1[15]),
		.y16 (outEtapa1[16]),
		.y17 (outEtapa1[17]),
		.y18 (outEtapa1[18]),
		.y19 (outEtapa1[19]),
		.y20 (outEtapa1[20]),
		.y21 (outEtapa1[21]),
		.y22 (outEtapa1[22]),
		.y23 (outEtapa1[23]),
		.y24 (outEtapa1[24]),
		.y25 (outEtapa1[25]),
		.y26 (outEtapa1[26]),
		.y27 (outEtapa1[27]),
		.y28 (outEtapa1[28]),
		.y29 (outEtapa1[29]),
		.y30 (outEtapa1[30]),
		.y31 (outEtapa1[31])
	);
	
	scaling1
	#(
		.WIDTH (WIDTH_Y)
	)
	st1
	(
		.size (size),
		.x0 (outEtapa1[0]),
		.x1 (outEtapa1[1]),
		.x2 (outEtapa1[2]),
		.x3 (outEtapa1[3]),
		.x4 (outEtapa1[4]),
		.x5 (outEtapa1[5]),
		.x6 (outEtapa1[6]),
		.x7 (outEtapa1[7]),
		.x8 (outEtapa1[8]),
		.x9 (outEtapa1[9]),
		.x10 (outEtapa1[10]),
		.x11 (outEtapa1[11]),
		.x12 (outEtapa1[12]),
		.x13 (outEtapa1[13]),
		.x14 (outEtapa1[14]),
		.x15 (outEtapa1[15]),
		.x16 (outEtapa1[16]),
		.x17 (outEtapa1[17]),
		.x18 (outEtapa1[18]),
		.x19 (outEtapa1[19]),
		.x20 (outEtapa1[20]),
		.x21 (outEtapa1[21]),
		.x22 (outEtapa1[22]),
		.x23 (outEtapa1[23]),
		.x24 (outEtapa1[24]),
		.x25 (outEtapa1[25]),
		.x26 (outEtapa1[26]),
		.x27 (outEtapa1[27]),
		.x28 (outEtapa1[28]),
		.x29 (outEtapa1[29]),
		.x30 (outEtapa1[30]),
		.x31 (outEtapa1[31]),
		.y0 (outScaling1[0]),
		.y1 (outScaling1[1]),
		.y2 (outScaling1[2]),
		.y3 (outScaling1[3]),
		.y4 (outScaling1[4]),
		.y5 (outScaling1[5]),
		.y6 (outScaling1[6]),
		.y7 (outScaling1[7]),
		.y8 (outScaling1[8]),
		.y9 (outScaling1[9]),
		.y10 (outScaling1[10]),
		.y11 (outScaling1[11]),
		.y12 (outScaling1[12]),
		.y13 (outScaling1[13]),
		.y14 (outScaling1[14]),
		.y15 (outScaling1[15]),
		.y16 (outScaling1[16]),
		.y17 (outScaling1[17]),
		.y18 (outScaling1[18]),
		.y19 (outScaling1[19]),
		.y20 (outScaling1[20]),
		.y21 (outScaling1[21]),
		.y22 (outScaling1[22]),
		.y23 (outScaling1[23]),
		.y24 (outScaling1[24]),
		.y25 (outScaling1[25]),
		.y26 (outScaling1[26]),
		.y27 (outScaling1[27]),
		.y28 (outScaling1[28]),
		.y29 (outScaling1[29]),
		.y30 (outScaling1[30]),
		.y31 (outScaling1[31])
	);
	
	
	
	
	transpuesta
	#(
		.WIDTH (WIDTH_Y)
	)
	transpuesta0
	(
		.clk (clk),
		.rst (rst),
		.load (load_trans),
		.unload (unload_trans),
		.x0 (outScaling1[0]),
		.x1 (outScaling1[1]),
		.x2 (outScaling1[2]),
		.x3 (outScaling1[3]),
		.x4 (outScaling1[4]),
		.x5 (outScaling1[5]),
		.x6 (outScaling1[6]),
		.x7 (outScaling1[7]),
		.x8 (outScaling1[8]),
		.x9 (outScaling1[9]),
		.x10 (outScaling1[10]),
		.x11 (outScaling1[11]),
		.x12 (outScaling1[12]),
		.x13 (outScaling1[13]),
		.x14 (outScaling1[14]),
		.x15 (outScaling1[15]),
		.x16 (outScaling1[16]),
		.x17 (outScaling1[17]),
		.x18 (outScaling1[18]),
		.x19 (outScaling1[19]),
		.x20 (outScaling1[20]),
		.x21 (outScaling1[21]),
		.x22 (outScaling1[22]),
		.x23 (outScaling1[23]),
		.x24 (outScaling1[24]),
		.x25 (outScaling1[25]),
		.x26 (outScaling1[26]),
		.x27 (outScaling1[27]),
		.x28 (outScaling1[28]),
		.x29 (outScaling1[29]),
		.x30 (outScaling1[30]),
		.x31 (outScaling1[31]),
		.y0 (inEtapa2[0]),
		.y1 (inEtapa2[1]),
		.y2 (inEtapa2[2]),
		.y3 (inEtapa2[3]),
		.y4 (inEtapa2[4]),
		.y5 (inEtapa2[5]),
		.y6 (inEtapa2[6]),
		.y7 (inEtapa2[7]),
		.y8 (inEtapa2[8]),
		.y9 (inEtapa2[9]),
		.y10 (inEtapa2[10]),
		.y11 (inEtapa2[11]),
		.y12 (inEtapa2[12]),
		.y13 (inEtapa2[13]),
		.y14 (inEtapa2[14]),
		.y15 (inEtapa2[15]),
		.y16 (inEtapa2[16]),
		.y17 (inEtapa2[17]),
		.y18 (inEtapa2[18]),
		.y19 (inEtapa2[19]),
		.y20 (inEtapa2[20]),
		.y21 (inEtapa2[21]),
		.y22 (inEtapa2[22]),
		.y23 (inEtapa2[23]),
		.y24 (inEtapa2[24]),
		.y25 (inEtapa2[25]),
		.y26 (inEtapa2[26]),
		.y27 (inEtapa2[27]),
		.y28 (inEtapa2[28]),
		.y29 (inEtapa2[29]),
		.y30 (inEtapa2[30]),
		.y31 (inEtapa2[31])
	);
	
	
	dct32
	#(
		.WIDTH_X (WIDTH_X2),
		.WIDTH_Y (WIDTH_Y2)
	)
	dct32_etapa2
	(
		.clk (clk),
		.rst (rst),
		.load (load_2dct),
		.x0 (inEtapa2[0]),
		.x1 (inEtapa2[1]),
		.x2 (inEtapa2[2]),
		.x3 (inEtapa2[3]),
		.x4 (inEtapa2[4]),
		.x5 (inEtapa2[5]),
		.x6 (inEtapa2[6]),
		.x7 (inEtapa2[7]),
		.x8 (inEtapa2[8]),
		.x9 (inEtapa2[9]),
		.x10 (inEtapa2[10]),
		.x11 (inEtapa2[11]),
		.x12 (inEtapa2[12]),
		.x13 (inEtapa2[13]),
		.x14 (inEtapa2[14]),
		.x15 (inEtapa2[15]),
		.x16 (inEtapa2[16]),
		.x17 (inEtapa2[17]),
		.x18 (inEtapa2[18]),
		.x19 (inEtapa2[19]),
		.x20 (inEtapa2[20]),
		.x21 (inEtapa2[21]),
		.x22 (inEtapa2[22]),
		.x23 (inEtapa2[23]),
		.x24 (inEtapa2[24]),
		.x25 (inEtapa2[25]),
		.x26 (inEtapa2[26]),
		.x27 (inEtapa2[27]),
		.x28 (inEtapa2[28]),
		.x29 (inEtapa2[29]),
		.x30 (inEtapa2[30]),
		.x31 (inEtapa2[31]),
		.y0 (outEtapa2[0]),
		.y1 (outEtapa2[1]),
		.y2 (outEtapa2[2]),
		.y3 (outEtapa2[3]),
		.y4 (outEtapa2[4]),
		.y5 (outEtapa2[5]),
		.y6 (outEtapa2[6]),
		.y7 (outEtapa2[7]),
		.y8 (outEtapa2[8]),
		.y9 (outEtapa2[9]),
		.y10 (outEtapa2[10]),
		.y11 (outEtapa2[11]),
		.y12 (outEtapa2[12]),
		.y13 (outEtapa2[13]),
		.y14 (outEtapa2[14]),
		.y15 (outEtapa2[15]),
		.y16 (outEtapa2[16]),
		.y17 (outEtapa2[17]),
		.y18 (outEtapa2[18]),
		.y19 (outEtapa2[19]),
		.y20 (outEtapa2[20]),
		.y21 (outEtapa2[21]),
		.y22 (outEtapa2[22]),
		.y23 (outEtapa2[23]),
		.y24 (outEtapa2[24]),
		.y25 (outEtapa2[25]),
		.y26 (outEtapa2[26]),
		.y27 (outEtapa2[27]),
		.y28 (outEtapa2[28]),
		.y29 (outEtapa2[29]),
		.y30 (outEtapa2[30]),
		.y31 (outEtapa2[31])
	);
	
	
	scaling2
	#(
		.WIDTH (WIDTH_Y2)
	)
	st2
	(
		.size (size),
		.x0 (outEtapa2[0]),
		.x1 (outEtapa2[1]),
		.x2 (outEtapa2[2]),
		.x3 (outEtapa2[3]),
		.x4 (outEtapa2[4]),
		.x5 (outEtapa2[5]),
		.x6 (outEtapa2[6]),
		.x7 (outEtapa2[7]),
		.x8 (outEtapa2[8]),
		.x9 (outEtapa2[9]),
		.x10 (outEtapa2[10]),
		.x11 (outEtapa2[11]),
		.x12 (outEtapa2[12]),
		.x13 (outEtapa2[13]),
		.x14 (outEtapa2[14]),
		.x15 (outEtapa2[15]),
		.x16 (outEtapa2[16]),
		.x17 (outEtapa2[17]),
		.x18 (outEtapa2[18]),
		.x19 (outEtapa2[19]),
		.x20 (outEtapa2[20]),
		.x21 (outEtapa2[21]),
		.x22 (outEtapa2[22]),
		.x23 (outEtapa2[23]),
		.x24 (outEtapa2[24]),
		.x25 (outEtapa2[25]),
		.x26 (outEtapa2[26]),
		.x27 (outEtapa2[27]),
		.x28 (outEtapa2[28]),
		.x29 (outEtapa2[29]),
		.x30 (outEtapa2[30]),
		.x31 (outEtapa2[31]),
		.y0 (outScaling2[0]),
		.y1 (outScaling2[1]),
		.y2 (outScaling2[2]),
		.y3 (outScaling2[3]),
		.y4 (outScaling2[4]),
		.y5 (outScaling2[5]),
		.y6 (outScaling2[6]),
		.y7 (outScaling2[7]),
		.y8 (outScaling2[8]),
		.y9 (outScaling2[9]),
		.y10 (outScaling2[10]),
		.y11 (outScaling2[11]),
		.y12 (outScaling2[12]),
		.y13 (outScaling2[13]),
		.y14 (outScaling2[14]),
		.y15 (outScaling2[15]),
		.y16 (outScaling2[16]),
		.y17 (outScaling2[17]),
		.y18 (outScaling2[18]),
		.y19 (outScaling2[19]),
		.y20 (outScaling2[20]),
		.y21 (outScaling2[21]),
		.y22 (outScaling2[22]),
		.y23 (outScaling2[23]),
		.y24 (outScaling2[24]),
		.y25 (outScaling2[25]),
		.y26 (outScaling2[26]),
		.y27 (outScaling2[27]),
		.y28 (outScaling2[28]),
		.y29 (outScaling2[29]),
		.y30 (outScaling2[30]),
		.y31 (outScaling2[31])
	);
	
	
	assign y0 = outScaling2[0];
	assign y1 = outScaling2[1];
	assign y2 = outScaling2[2];
	assign y3 = outScaling2[3];
	assign y4 = outScaling2[4];
	assign y5 = outScaling2[5];
	assign y6 = outScaling2[6];
	assign y7 = outScaling2[7];
	assign y8 = outScaling2[8];
	assign y9 = outScaling2[9];
	assign y10 = outScaling2[10];
	assign y11 = outScaling2[11];
	assign y12 = outScaling2[12];
	assign y13 = outScaling2[13];
	assign y14 = outScaling2[14];
	assign y15 = outScaling2[15];
	assign y16 = outScaling2[16];
	assign y17 = outScaling2[17];
	assign y18 = outScaling2[18];
	assign y19 = outScaling2[19];
	assign y20 = outScaling2[20];
	assign y21 = outScaling2[21];
	assign y22 = outScaling2[22];
	assign y23 = outScaling2[23];
	assign y24 = outScaling2[24];
	assign y25 = outScaling2[25];
	assign y26 = outScaling2[26];
	assign y27 = outScaling2[27];
	assign y28 = outScaling2[28];
	assign y29 = outScaling2[29];
	assign y30 = outScaling2[30];
	assign y31 = outScaling2[31];
	
	
	

endmodule
