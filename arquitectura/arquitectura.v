module arquitectura
#(
	parameter   WIDTH_Y2 = 28,
	//paramteros de entrada y salida
	parameter WIDTH_X = 16,
	parameter WIDTH_Y = 22,
	
	//parametros de dct
	parameter WIDTH_XDCT1 = 16,
	parameter WIDTH_YDCT1 = 22,
	parameter WIDTH_XDCT2 = 22,
	parameter WIDTH_YDCT2 = 30,
	
	//parametros de idct
	parameter WIDTH_XIDCT1 = 16,
	parameter WIDTH_YIDCT1 = 22,
	parameter WIDTH_XIDCT2 = 22,
	parameter WIDTH_YIDCT2 = 30,
	
	//nombres de estados 
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
	input wire dct,
	input wire idct,
	
	output wire signed [WIDTH_Y-1:0] y0,
	output wire signed [WIDTH_Y-1:0] y1,
	output wire signed [WIDTH_Y-1:0] y2,
	output wire signed [WIDTH_Y-1:0] y3,
	output wire signed [WIDTH_Y-1:0] y4,
	output wire signed [WIDTH_Y-1:0] y5,
	output wire signed [WIDTH_Y-1:0] y6,
	output wire signed [WIDTH_Y-1:0] y7,
	output wire signed [WIDTH_Y-1:0] y8,
	output wire signed [WIDTH_Y-1:0] y9,
	output wire signed [WIDTH_Y-1:0] y10,
	output wire signed [WIDTH_Y-1:0] y11,
	output wire signed [WIDTH_Y-1:0] y12,
	output wire signed [WIDTH_Y-1:0] y13,
	output wire signed [WIDTH_Y-1:0] y14,
	output wire signed [WIDTH_Y-1:0] y15,
	output wire signed [WIDTH_Y-1:0] y16,
	output wire signed [WIDTH_Y-1:0] y17,
	output wire signed [WIDTH_Y-1:0] y18,
	output wire signed [WIDTH_Y-1:0] y19,
	output wire signed [WIDTH_Y-1:0] y20,
	output wire signed [WIDTH_Y-1:0] y21,
	output wire signed [WIDTH_Y-1:0] y22,
	output wire signed [WIDTH_Y-1:0] y23,
	output wire signed [WIDTH_Y-1:0] y24,
	output wire signed [WIDTH_Y-1:0] y25,
	output wire signed [WIDTH_Y-1:0] y26,
	output wire signed [WIDTH_Y-1:0] y27,
	output wire signed [WIDTH_Y-1:0] y28,
	output wire signed [WIDTH_Y-1:0] y29,
	output wire signed [WIDTH_Y-1:0] y30,
	output wire signed [WIDTH_Y-1:0] y31
	
); 
	wire load_1dct;
	wire load_trans;
	wire unload_trans;
	wire load_2dct;
	wire load_idct1;
	wire load_idct2;
	
	
	wire signed [WIDTH_YIDCT1-1:0] inEtapa2 [31:0];
	reg signed [WIDTH_Y-1:0] outEtapa1 [31:0];
	wire signed [WIDTH_Y-1:0] outScaling1 [31:0];
	wire signed [WIDTH_Y2-1:0] outScaling2 [31:0];
	reg signed [WIDTH_Y2-1:0] outEtapa2 [31:0];
	
	reg signed [WIDTH_XDCT1-1:0] inputDCT1 [31:0];
	wire signed [WIDTH_YDCT1-1:0] outputDCT1 [31:0];
	reg signed [WIDTH_XDCT1-1:0] inputDCT2 [31:0];
	wire signed [WIDTH_YDCT1-1:0] outputDCT2 [31:0];
	
	reg signed [WIDTH_XIDCT1-1:0] inputIDCT1 [31:0];
	wire signed [WIDTH_YIDCT1-1:0] outputIDCT1 [31:0];
	reg signed [WIDTH_XIDCT1-1:0] inputIDCT2 [31:0];
	wire signed [WIDTH_YIDCT1-1:0] outputIDCT2 [31:0];
	
	integer i;
	
	//selector de operacion (DCT o IDCT)
	always @(*)
	begin
	
		inputDCT1[0] = 0;
		inputDCT1[1] = 0;
		inputDCT1[2] = 0;
		inputDCT1[3] = 0;
		inputDCT1[4] = 0;
		inputDCT1[5] = 0;
		inputDCT1[6] = 0;
		inputDCT1[7] = 0;
		inputDCT1[8] = 0;
		inputDCT1[9] = 0;
		inputDCT1[10] = 0;
		inputDCT1[11] = 0;
		inputDCT1[12] = 0;
		inputDCT1[13] = 0;
		inputDCT1[14] = 0;
		inputDCT1[15] = 0;
		inputDCT1[16] = 0;
		inputDCT1[17] = 0;
		inputDCT1[18] = 0;
		inputDCT1[19] = 0;
		inputDCT1[20] = 0;
		inputDCT1[21] = 0;
		inputDCT1[22] = 0;
		inputDCT1[23] = 0;
		inputDCT1[24] = 0;
		inputDCT1[25] = 0;
		inputDCT1[26] = 0;
		inputDCT1[27] = 0;
		inputDCT1[28] = 0;
		inputDCT1[29] = 0;
		inputDCT1[30] = 0;
		inputDCT1[31] = 0;
		
		inputDCT2[0] = 0;
		inputDCT2[1] = 0;
		inputDCT2[2] = 0;
		inputDCT2[3] = 0;
		inputDCT2[4] = 0;
		inputDCT2[5] = 0;
		inputDCT2[6] = 0;
		inputDCT2[7] = 0;
		inputDCT2[8] = 0;
		inputDCT2[9] = 0;
		inputDCT2[10] = 0;
		inputDCT2[11] = 0;
		inputDCT2[12] = 0;
		inputDCT2[13] = 0;
		inputDCT2[14] = 0;
		inputDCT2[15] = 0;
		inputDCT2[16] = 0;
		inputDCT2[17] = 0;
		inputDCT2[18] = 0;
		inputDCT2[19] = 0;
		inputDCT2[20] = 0;
		inputDCT2[21] = 0;
		inputDCT2[22] = 0;
		inputDCT2[23] = 0;
		inputDCT2[24] = 0;
		inputDCT2[25] = 0;
		inputDCT2[26] = 0;
		inputDCT2[27] = 0;
		inputDCT2[28] = 0;
		inputDCT2[29] = 0;
		inputDCT2[30] = 0;
		inputDCT2[31] = 0;
		
		inputIDCT1[0] = 0;
		inputIDCT1[1] = 0;
		inputIDCT1[2] = 0;
		inputIDCT1[3] = 0;
		inputIDCT1[4] = 0;
		inputIDCT1[5] = 0;
		inputIDCT1[6] = 0;
		inputIDCT1[7] = 0;
		inputIDCT1[8] = 0;
		inputIDCT1[9] = 0;
		inputIDCT1[10] = 0;
		inputIDCT1[11] = 0;
		inputIDCT1[12] = 0;
		inputIDCT1[13] = 0;
		inputIDCT1[14] = 0;
		inputIDCT1[15] = 0;
		inputIDCT1[16] = 0;
		inputIDCT1[17] = 0;
		inputIDCT1[18] = 0;
		inputIDCT1[19] = 0;
		inputIDCT1[20] = 0;
		inputIDCT1[21] = 0;
		inputIDCT1[22] = 0;
		inputIDCT1[23] = 0;
		inputIDCT1[24] = 0;
		inputIDCT1[25] = 0;
		inputIDCT1[26] = 0;
		inputIDCT1[27] = 0;
		inputIDCT1[28] = 0;
		inputIDCT1[29] = 0;
		inputIDCT1[30] = 0;
		inputIDCT1[31] = 0;
		
		inputIDCT2[0] = 0;
		inputIDCT2[1] = 0;
		inputIDCT2[2] = 0;
		inputIDCT2[3] = 0;
		inputIDCT2[4] = 0;
		inputIDCT2[5] = 0;
		inputIDCT2[6] = 0;
		inputIDCT2[7] = 0;
		inputIDCT2[8] = 0;
		inputIDCT2[9] = 0;
		inputIDCT2[10] = 0;
		inputIDCT2[11] = 0;
		inputIDCT2[12] = 0;
		inputIDCT2[13] = 0;
		inputIDCT2[14] = 0;
		inputIDCT2[15] = 0;
		inputIDCT2[16] = 0;
		inputIDCT2[17] = 0;
		inputIDCT2[18] = 0;
		inputIDCT2[19] = 0;
		inputIDCT2[20] = 0;
		inputIDCT2[21] = 0;
		inputIDCT2[22] = 0;
		inputIDCT2[23] = 0;
		inputIDCT2[24] = 0;
		inputIDCT2[25] = 0;
		inputIDCT2[26] = 0;
		inputIDCT2[27] = 0;
		inputIDCT2[28] = 0;
		inputIDCT2[29] = 0;
		inputIDCT2[30] = 0;
		inputIDCT2[31] = 0;	
		
		i = 0;
		outEtapa1[0] = 0;
		outEtapa1[1] = 0;
		outEtapa1[2] = 0;
		outEtapa1[3] = 0;
		outEtapa1[4] = 0;
		outEtapa1[5] = 0;
		outEtapa1[6] = 0;
		outEtapa1[7] = 0;
		outEtapa1[8] = 0;
		outEtapa1[9] = 0;
		outEtapa1[10] = 0;
		outEtapa1[11] = 0;
		outEtapa1[12] = 0;
		outEtapa1[13] = 0;
		outEtapa1[14] = 0;
		outEtapa1[15] = 0;
		outEtapa1[16] = 0;
		outEtapa1[17] = 0;
		outEtapa1[18] = 0;
		outEtapa1[19] = 0;
		outEtapa1[20] = 0;
		outEtapa1[21] = 0;
		outEtapa1[22] = 0;
		outEtapa1[23] = 0;
		outEtapa1[24] = 0;
		outEtapa1[25] = 0;
		outEtapa1[26] = 0;
		outEtapa1[27] = 0;
		outEtapa1[28] = 0;
		outEtapa1[29] = 0;
		outEtapa1[30] = 0;
		outEtapa1[31] = 0;
		outEtapa2[0] = 0;
		outEtapa2[1] = 0;
		outEtapa2[2] = 0;
		outEtapa2[3] = 0;
		outEtapa2[4] = 0;
		outEtapa2[5] = 0;
		outEtapa2[6] = 0;
		outEtapa2[7] = 0;
		outEtapa2[8] = 0;
		outEtapa2[9] = 0;
		outEtapa2[10] = 0;
		outEtapa2[11] = 0;
		outEtapa2[12] = 0;
		outEtapa2[13] = 0;
		outEtapa2[14] = 0;
		outEtapa2[15] = 0;
		outEtapa2[16] = 0;
		outEtapa2[17] = 0;
		outEtapa2[18] = 0;
		outEtapa2[19] = 0;
		outEtapa2[20] = 0;
		outEtapa2[21] = 0;
		outEtapa2[22] = 0;
		outEtapa2[23] = 0;
		outEtapa2[24] = 0;
		outEtapa2[25] = 0;
		outEtapa2[26] = 0;
		outEtapa2[27] = 0;
		outEtapa2[28] = 0;
		outEtapa2[29] = 0;
		outEtapa2[30] = 0;
		outEtapa2[31] = 0;
		
		if (dct) begin
		
			inputDCT1[0] = x0;
			inputDCT1[1] = x1;
			inputDCT1[2] = x2;
			inputDCT1[3] = x3;
			inputDCT1[4] = x4;
			inputDCT1[5] = x5;
			inputDCT1[6] = x6;
			inputDCT1[7] = x7;
			inputDCT1[8] = x8;
			inputDCT1[9] = x9;
			inputDCT1[10] = x10;
			inputDCT1[11] = x11;
			inputDCT1[12] = x12;
			inputDCT1[13] = x13;
			inputDCT1[14] = x14;
			inputDCT1[15] = x15;
			inputDCT1[16] = x16;
			inputDCT1[17] = x17;
			inputDCT1[18] = x18;
			inputDCT1[19] = x19;
			inputDCT1[20] = x20;
			inputDCT1[21] = x21;
			inputDCT1[22] = x22;
			inputDCT1[23] = x23;
			inputDCT1[24] = x24;
			inputDCT1[25] = x25;
			inputDCT1[26] = x26;
			inputDCT1[27] = x27;
			inputDCT1[28] = x28;
			inputDCT1[29] = x29;
			inputDCT1[30] = x30;
			inputDCT1[31] = x31;
			
			inputDCT2[0] = inEtapa2[0];
			inputDCT2[1] = inEtapa2[1];
			inputDCT2[2] = inEtapa2[2];
			inputDCT2[3] = inEtapa2[3];
			inputDCT2[4] = inEtapa2[4];
			inputDCT2[5] = inEtapa2[5];
			inputDCT2[6] = inEtapa2[6];
			inputDCT2[7] = inEtapa2[7];
			inputDCT2[8] = inEtapa2[8];
			inputDCT2[9] = inEtapa2[9];
			inputDCT2[10] = inEtapa2[10];
			inputDCT2[11] = inEtapa2[11];
			inputDCT2[12] = inEtapa2[12];
			inputDCT2[13] = inEtapa2[13];
			inputDCT2[14] = inEtapa2[14];
			inputDCT2[15] = inEtapa2[15];
			inputDCT2[16] = inEtapa2[16];
			inputDCT2[17] = inEtapa2[17];
			inputDCT2[18] = inEtapa2[18];
			inputDCT2[19] = inEtapa2[19];
			inputDCT2[20] = inEtapa2[20];
			inputDCT2[21] = inEtapa2[21];
			inputDCT2[22] = inEtapa2[22];
			inputDCT2[23] = inEtapa2[23];
			inputDCT2[24] = inEtapa2[24];
			inputDCT2[25] = inEtapa2[25];
			inputDCT2[26] = inEtapa2[26];
			inputDCT2[27] = inEtapa2[27];
			inputDCT2[28] = inEtapa2[28];
			inputDCT2[29] = inEtapa2[29];
			inputDCT2[30] = inEtapa2[30];
			inputDCT2[31] = inEtapa2[31];
			
			for(i = 0;i<32;i=i+1) begin
				outEtapa1[i] = outputDCT1[i]; 
			end
			
			for(i = 0;i<32;i=i+1) begin
				outEtapa2[i] = outputDCT2[i]; 
			end
			
		end
		else if (idct) begin
			inputIDCT1[0] = x0;
			inputIDCT1[1] = x1;
			inputIDCT1[2] = x2;
			inputIDCT1[3] = x3;
			inputIDCT1[4] = x4;
			inputIDCT1[5] = x5;
			inputIDCT1[6] = x6;
			inputIDCT1[7] = x7;
			inputIDCT1[8] = x8;
			inputIDCT1[9] = x9;
			inputIDCT1[10] = x10;
			inputIDCT1[11] = x11;
			inputIDCT1[12] = x12;
			inputIDCT1[13] = x13;
			inputIDCT1[14] = x14;
			inputIDCT1[15] = x15;
			inputIDCT1[16] = x16;
			inputIDCT1[17] = x17;
			inputIDCT1[18] = x18;
			inputIDCT1[19] = x19;
			inputIDCT1[20] = x20;
			inputIDCT1[21] = x21;
			inputIDCT1[22] = x22;
			inputIDCT1[23] = x23;
			inputIDCT1[24] = x24;
			inputIDCT1[25] = x25;
			inputIDCT1[26] = x26;
			inputIDCT1[27] = x27;
			inputIDCT1[28] = x28;
			inputIDCT1[29] = x29;
			inputIDCT1[30] = x30;
			inputIDCT1[31] = x31;
			
			inputIDCT2[0] = inEtapa2[0];
			inputIDCT2[1] = inEtapa2[1];
			inputIDCT2[2] = inEtapa2[2];
			inputIDCT2[3] = inEtapa2[3];
			inputIDCT2[4] = inEtapa2[4];
			inputIDCT2[5] = inEtapa2[5];
			inputIDCT2[6] = inEtapa2[6];
			inputIDCT2[7] = inEtapa2[7];
			inputIDCT2[8] = inEtapa2[8];
			inputIDCT2[9] = inEtapa2[9];
			inputIDCT2[10] = inEtapa2[10];
			inputIDCT2[11] = inEtapa2[11];
			inputIDCT2[12] = inEtapa2[12];
			inputIDCT2[13] = inEtapa2[13];
			inputIDCT2[14] = inEtapa2[14];
			inputIDCT2[15] = inEtapa2[15];
			inputIDCT2[16] = inEtapa2[16];
			inputIDCT2[17] = inEtapa2[17];
			inputIDCT2[18] = inEtapa2[18];
			inputIDCT2[19] = inEtapa2[19];
			inputIDCT2[20] = inEtapa2[20];
			inputIDCT2[21] = inEtapa2[21];
			inputIDCT2[22] = inEtapa2[22];
			inputIDCT2[23] = inEtapa2[23];
			inputIDCT2[24] = inEtapa2[24];
			inputIDCT2[25] = inEtapa2[25];
			inputIDCT2[26] = inEtapa2[26];
			inputIDCT2[27] = inEtapa2[27];
			inputIDCT2[28] = inEtapa2[28];
			inputIDCT2[29] = inEtapa2[29];
			inputIDCT2[30] = inEtapa2[30];
			inputIDCT2[31] = inEtapa2[31];
			
			for(i = 0;i<32;i=i+1) begin
				outEtapa1[i] = outputIDCT1[i]; 
			end
			
			for(i = 0;i<32;i=i+1) begin
				outEtapa2[i] = outputIDCT2[i]; 
			end
			
			
		end
			
	end
	
	
	fsm fsm1
	(
	.clk (clk),
	.rst (rst),
	.load (load),
	.load_1dct (load_1dct),
	.load_trans (load_trans),
	.unload_trans (unload_trans),
	.load_2dct (load_2dct),
	.load_idct1 (load_idct1),
	.load_idct2 (load_idct2)
	);
	
	//declaracion de bloque DCT1
	dct32
	#(
		.WIDTH_X (WIDTH_XDCT1),
		.WIDTH_Y (WIDTH_YDCT1)
	)
	dct32_etapa1
	(
		.clk (clk),
		.rst (rst),
		.load (load_1dct),
		.x0 (inputDCT1[0]),
		.x1 (inputDCT1[1]),
		.x2 (inputDCT1[2]),
		.x3 (inputDCT1[3]),
		.x4 (inputDCT1[4]),
		.x5 (inputDCT1[5]),
		.x6 (inputDCT1[6]),
		.x7 (inputDCT1[7]),
		.x8 (inputDCT1[8]),
		.x9 (inputDCT1[9]),
		.x10 (inputDCT1[10]),
		.x11 (inputDCT1[11]),
		.x12 (inputDCT1[12]),
		.x13 (inputDCT1[13]),
		.x14 (inputDCT1[14]),
		.x15 (inputDCT1[15]),
		.x16 (inputDCT1[16]),
		.x17 (inputDCT1[17]),
		.x18 (inputDCT1[18]),
		.x19 (inputDCT1[19]),
		.x20 (inputDCT1[20]),
		.x21 (inputDCT1[21]),
		.x22 (inputDCT1[22]),
		.x23 (inputDCT1[23]),
		.x24 (inputDCT1[24]),
		.x25 (inputDCT1[25]),
		.x26 (inputDCT1[26]),
		.x27 (inputDCT1[27]),
		.x28 (inputDCT1[28]),
		.x29 (inputDCT1[29]),
		.x30 (inputDCT1[30]),
		.x31 (inputDCT1[31]),
		.y0 (outputDCT1[0]),
		.y1 (outputDCT1[1]),
		.y2 (outputDCT1[2]),
		.y3 (outputDCT1[3]),
		.y4 (outputDCT1[4]),
		.y5 (outputDCT1[5]),
		.y6 (outputDCT1[6]),
		.y7 (outputDCT1[7]),
		.y8 (outputDCT1[8]),
		.y9 (outputDCT1[9]),
		.y10 (outputDCT1[10]),
		.y11 (outputDCT1[11]),
		.y12 (outputDCT1[12]),
		.y13 (outputDCT1[13]),
		.y14 (outputDCT1[14]),
		.y15 (outputDCT1[15]),
		.y16 (outputDCT1[16]),
		.y17 (outputDCT1[17]),
		.y18 (outputDCT1[18]),
		.y19 (outputDCT1[19]),
		.y20 (outputDCT1[20]),
		.y21 (outputDCT1[21]),
		.y22 (outputDCT1[22]),
		.y23 (outputDCT1[23]),
		.y24 (outputDCT1[24]),
		.y25 (outputDCT1[25]),
		.y26 (outputDCT1[26]),
		.y27 (outputDCT1[27]),
		.y28 (outputDCT1[28]),
		.y29 (outputDCT1[29]),
		.y30 (outputDCT1[30]),
		.y31 (outputDCT1[31])
	);
	
	//declaracion de bloque IDCT1
	idct32
	#(
		.WIDTH_X (WIDTH_XIDCT1),
		.WIDTH_Y (WIDTH_YIDCT1)
	)
	idct32_etapa1
	(
		.clk (clk),
		.rst (rst),
		.load (load_idct1),
		.x0 (inputIDCT1[0]),
		.x1 (inputIDCT1[1]),
		.x2 (inputIDCT1[2]),
		.x3 (inputIDCT1[3]),
		.x4 (inputIDCT1[4]),
		.x5 (inputIDCT1[5]),
		.x6 (inputIDCT1[6]),
		.x7 (inputIDCT1[7]),
		.x8 (inputIDCT1[8]),
		.x9 (inputIDCT1[9]),
		.x10 (inputIDCT1[10]),
		.x11 (inputIDCT1[11]),
		.x12 (inputIDCT1[12]),
		.x13 (inputIDCT1[13]),
		.x14 (inputIDCT1[14]),
		.x15 (inputIDCT1[15]),
		.x16 (inputIDCT1[16]),
		.x17 (inputIDCT1[17]),
		.x18 (inputIDCT1[18]),
		.x19 (inputIDCT1[19]),
		.x20 (inputIDCT1[20]),
		.x21 (inputIDCT1[21]),
		.x22 (inputIDCT1[22]),
		.x23 (inputIDCT1[23]),
		.x24 (inputIDCT1[24]),
		.x25 (inputIDCT1[25]),
		.x26 (inputIDCT1[26]),
		.x27 (inputIDCT1[27]),
		.x28 (inputIDCT1[28]),
		.x29 (inputIDCT1[29]),
		.x30 (inputIDCT1[30]),
		.x31 (inputIDCT1[31]),
		.y0 (outputIDCT1[0]),
		.y1 (outputIDCT1[1]),
		.y2 (outputIDCT1[2]),
		.y3 (outputIDCT1[3]),
		.y4 (outputIDCT1[4]),
		.y5 (outputIDCT1[5]),
		.y6 (outputIDCT1[6]),
		.y7 (outputIDCT1[7]),
		.y8 (outputIDCT1[8]),
		.y9 (outputIDCT1[9]),
		.y10 (outputIDCT1[10]),
		.y11 (outputIDCT1[11]),
		.y12 (outputIDCT1[12]),
		.y13 (outputIDCT1[13]),
		.y14 (outputIDCT1[14]),
		.y15 (outputIDCT1[15]),
		.y16 (outputIDCT1[16]),
		.y17 (outputIDCT1[17]),
		.y18 (outputIDCT1[18]),
		.y19 (outputIDCT1[19]),
		.y20 (outputIDCT1[20]),
		.y21 (outputIDCT1[21]),
		.y22 (outputIDCT1[22]),
		.y23 (outputIDCT1[23]),
		.y24 (outputIDCT1[24]),
		.y25 (outputIDCT1[25]),
		.y26 (outputIDCT1[26]),
		.y27 (outputIDCT1[27]),
		.y28 (outputIDCT1[28]),
		.y29 (outputIDCT1[29]),
		.y30 (outputIDCT1[30]),
		.y31 (outputIDCT1[31])
	);
	
	
	scaling1
	#(
		.WIDTH (WIDTH_YIDCT1)
	)
	st1
	(
		.size (size),
		.dct (dct),
		.idct (idct),
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
		.WIDTH (WIDTH_YDCT1)
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
		.WIDTH_X (WIDTH_YDCT1),
		.WIDTH_Y (WIDTH_YDCT2)
	)
	dct32_etapa2
	(
		.clk (clk),
		.rst (rst),
		.load (load_1dct),
		.x0 (inputDCT2[0]),
		.x1 (inputDCT2[1]),
		.x2 (inputDCT2[2]),
		.x3 (inputDCT2[3]),
		.x4 (inputDCT2[4]),
		.x5 (inputDCT2[5]),
		.x6 (inputDCT2[6]),
		.x7 (inputDCT2[7]),
		.x8 (inputDCT2[8]),
		.x9 (inputDCT2[9]),
		.x10 (inputDCT2[10]),
		.x11 (inputDCT2[11]),
		.x12 (inputDCT2[12]),
		.x13 (inputDCT2[13]),
		.x14 (inputDCT2[14]),
		.x15 (inputDCT2[15]),
		.x16 (inputDCT2[16]),
		.x17 (inputDCT2[17]),
		.x18 (inputDCT2[18]),
		.x19 (inputDCT2[19]),
		.x20 (inputDCT2[20]),
		.x21 (inputDCT2[21]),
		.x22 (inputDCT2[22]),
		.x23 (inputDCT2[23]),
		.x24 (inputDCT2[24]),
		.x25 (inputDCT2[25]),
		.x26 (inputDCT2[26]),
		.x27 (inputDCT2[27]),
		.x28 (inputDCT2[28]),
		.x29 (inputDCT2[29]),
		.x30 (inputDCT2[30]),
		.x31 (inputDCT2[31]),
		.y0 (outputDCT2[0]),
		.y1 (outputDCT2[1]),
		.y2 (outputDCT2[2]),
		.y3 (outputDCT2[3]),
		.y4 (outputDCT2[4]),
		.y5 (outputDCT2[5]),
		.y6 (outputDCT2[6]),
		.y7 (outputDCT2[7]),
		.y8 (outputDCT2[8]),
		.y9 (outputDCT2[9]),
		.y10 (outputDCT2[10]),
		.y11 (outputDCT2[11]),
		.y12 (outputDCT2[12]),
		.y13 (outputDCT2[13]),
		.y14 (outputDCT2[14]),
		.y15 (outputDCT2[15]),
		.y16 (outputDCT2[16]),
		.y17 (outputDCT2[17]),
		.y18 (outputDCT2[18]),
		.y19 (outputDCT2[19]),
		.y20 (outputDCT2[20]),
		.y21 (outputDCT2[21]),
		.y22 (outputDCT2[22]),
		.y23 (outputDCT2[23]),
		.y24 (outputDCT2[24]),
		.y25 (outputDCT2[25]),
		.y26 (outputDCT2[26]),
		.y27 (outputDCT2[27]),
		.y28 (outputDCT2[28]),
		.y29 (outputDCT2[29]),
		.y30 (outputDCT2[30]),
		.y31 (outputDCT2[31])
	);
	
	idct32
	#(
		.WIDTH_X (WIDTH_XIDCT2),
		.WIDTH_Y (WIDTH_YIDCT2)
	)
	idct32_etapa2
	(
		.clk (clk),
		.rst (rst),
		.load (load_idct1),
		.x0 (inputIDCT2[0]),
		.x1 (inputIDCT2[1]),
		.x2 (inputIDCT2[2]),
		.x3 (inputIDCT2[3]),
		.x4 (inputIDCT2[4]),
		.x5 (inputIDCT2[5]),
		.x6 (inputIDCT2[6]),
		.x7 (inputIDCT2[7]),
		.x8 (inputIDCT2[8]),
		.x9 (inputIDCT2[9]),
		.x10 (inputIDCT2[10]),
		.x11 (inputIDCT2[11]),
		.x12 (inputIDCT2[12]),
		.x13 (inputIDCT2[13]),
		.x14 (inputIDCT2[14]),
		.x15 (inputIDCT2[15]),
		.x16 (inputIDCT2[16]),
		.x17 (inputIDCT2[17]),
		.x18 (inputIDCT2[18]),
		.x19 (inputIDCT2[19]),
		.x20 (inputIDCT2[20]),
		.x21 (inputIDCT2[21]),
		.x22 (inputIDCT2[22]),
		.x23 (inputIDCT2[23]),
		.x24 (inputIDCT2[24]),
		.x25 (inputIDCT2[25]),
		.x26 (inputIDCT2[26]),
		.x27 (inputIDCT2[27]),
		.x28 (inputIDCT2[28]),
		.x29 (inputIDCT2[29]),
		.x30 (inputIDCT2[30]),
		.x31 (inputIDCT2[31]),
		.y0 (outputIDCT2[0]),
		.y1 (outputIDCT2[1]),
		.y2 (outputIDCT2[2]),
		.y3 (outputIDCT2[3]),
		.y4 (outputIDCT2[4]),
		.y5 (outputIDCT2[5]),
		.y6 (outputIDCT2[6]),
		.y7 (outputIDCT2[7]),
		.y8 (outputIDCT2[8]),
		.y9 (outputIDCT2[9]),
		.y10 (outputIDCT2[10]),
		.y11 (outputIDCT2[11]),
		.y12 (outputIDCT2[12]),
		.y13 (outputIDCT2[13]),
		.y14 (outputIDCT2[14]),
		.y15 (outputIDCT2[15]),
		.y16 (outputIDCT2[16]),
		.y17 (outputIDCT2[17]),
		.y18 (outputIDCT2[18]),
		.y19 (outputIDCT2[19]),
		.y20 (outputIDCT2[20]),
		.y21 (outputIDCT2[21]),
		.y22 (outputIDCT2[22]),
		.y23 (outputIDCT2[23]),
		.y24 (outputIDCT2[24]),
		.y25 (outputIDCT2[25]),
		.y26 (outputIDCT2[26]),
		.y27 (outputIDCT2[27]),
		.y28 (outputIDCT2[28]),
		.y29 (outputIDCT2[29]),
		.y30 (outputIDCT2[30]),
		.y31 (outputIDCT2[31])
	);
	
	scaling2
	#(
		.WIDTH (WIDTH_YIDCT2)
	)
	st2
	(
		.size (size),
		.dct (dct),
		.idct (idct),
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
	
	
	
	

	