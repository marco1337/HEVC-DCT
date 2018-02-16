module scaling1
#(
	parameter WIDTH = 22
)
(
	input wire [1:0] size,
	input wire dct,
	input wire idct,
	//input wire operation,
	
	input wire signed [WIDTH-1:0] x0,
	input wire signed [WIDTH-1:0] x1,
	input wire signed [WIDTH-1:0] x2,
	input wire signed [WIDTH-1:0] x3,
	input wire signed [WIDTH-1:0] x4,
	input wire signed [WIDTH-1:0] x5,
	input wire signed [WIDTH-1:0] x6,
	input wire signed [WIDTH-1:0] x7,
	input wire signed [WIDTH-1:0] x8,
	input wire signed [WIDTH-1:0] x9,
	input wire signed [WIDTH-1:0] x10,
	input wire signed [WIDTH-1:0] x11,
	input wire signed [WIDTH-1:0] x12,
	input wire signed [WIDTH-1:0] x13,
	input wire signed [WIDTH-1:0] x14,
	input wire signed [WIDTH-1:0] x15,
	input wire signed [WIDTH-1:0] x16,
	input wire signed [WIDTH-1:0] x17,
	input wire signed [WIDTH-1:0] x18,
	input wire signed [WIDTH-1:0] x19,
	input wire signed [WIDTH-1:0] x20,
	input wire signed [WIDTH-1:0] x21,
	input wire signed [WIDTH-1:0] x22,
	input wire signed [WIDTH-1:0] x23,
	input wire signed [WIDTH-1:0] x24,
	input wire signed [WIDTH-1:0] x25,
	input wire signed [WIDTH-1:0] x26,
	input wire signed [WIDTH-1:0] x27,
	input wire signed [WIDTH-1:0] x28,
	input wire signed [WIDTH-1:0] x29,
	input wire signed [WIDTH-1:0] x30,
	input wire signed [WIDTH-1:0] x31,
	
	output reg signed [WIDTH-1:0] y0,
	output reg signed [WIDTH-1:0] y1,
	output reg signed [WIDTH-1:0] y2,
	output reg signed [WIDTH-1:0] y3,
	output reg signed [WIDTH-1:0] y4,
	output reg signed [WIDTH-1:0] y5,
	output reg signed [WIDTH-1:0] y6,
	output reg signed [WIDTH-1:0] y7,
	output reg signed [WIDTH-1:0] y8,
	output reg signed [WIDTH-1:0] y9,
	output reg signed [WIDTH-1:0] y10,
	output reg signed [WIDTH-1:0] y11,
	output reg signed [WIDTH-1:0] y12,
	output reg signed [WIDTH-1:0] y13,
	output reg signed [WIDTH-1:0] y14,
	output reg signed [WIDTH-1:0] y15,
	output reg signed [WIDTH-1:0] y16,
	output reg signed [WIDTH-1:0] y17,
	output reg signed [WIDTH-1:0] y18,
	output reg signed [WIDTH-1:0] y19,
	output reg signed [WIDTH-1:0] y20,
	output reg signed [WIDTH-1:0] y21,
	output reg signed [WIDTH-1:0] y22,
	output reg signed [WIDTH-1:0] y23,
	output reg signed [WIDTH-1:0] y24,
	output reg signed [WIDTH-1:0] y25,
	output reg signed [WIDTH-1:0] y26,
	output reg signed [WIDTH-1:0] y27,
	output reg signed [WIDTH-1:0] y28,
	output reg signed [WIDTH-1:0] y29,
	output reg signed [WIDTH-1:0] y30,
	output reg signed [WIDTH-1:0] y31
);


	wire signed [WIDTH-1:0] tempIn [31:0];
	reg signed [WIDTH-1:0] tempOut [31:0];
	integer i;
	
	assign tempIn[0] = x0;
	assign tempIn[1] = x1;
	assign tempIn[2] = x2;
	assign tempIn[3] = x3;
	assign tempIn[4] = x4;
	assign tempIn[5] = x5;
	assign tempIn[6] = x6;
	assign tempIn[7] = x7;
	assign tempIn[8] = x8;
	assign tempIn[9] = x9;
	assign tempIn[10] = x10;
	assign tempIn[11] = x11;
	assign tempIn[12] = x12;
	assign tempIn[13] = x13;
	assign tempIn[14] = x14;
	assign tempIn[15] = x15;
	assign tempIn[16] = x16;
	assign tempIn[17] = x17;
	assign tempIn[18] = x18;
	assign tempIn[19] = x19;
	assign tempIn[20] = x20;
	assign tempIn[21] = x21;
	assign tempIn[22] = x22;
	assign tempIn[23] = x23;
	assign tempIn[24] = x24;
	assign tempIn[25] = x25;
	assign tempIn[26] = x26;
	assign tempIn[27] = x27;
	assign tempIn[28] = x28;
	assign tempIn[29] = x29;
	assign tempIn[30] = x30;
	assign tempIn[31] = x31;
	
	
	
	always@(*)
	begin
		
		if((size == 0) && (dct)) begin
				 y0 = {x0[WIDTH-1],x0[WIDTH-1:1]};
				 y1 = {x1[WIDTH-1],x1[WIDTH-1:1]};
				 y2 = {x2[WIDTH-1],x2[WIDTH-1:1]};
				 y3 = {x3[WIDTH-1],x3[WIDTH-1:1]};
				 y4 = {x4[WIDTH-1],x4[WIDTH-1:1]};
				 y5 = {x5[WIDTH-1],x5[WIDTH-1:1]};
				 y6 = {x6[WIDTH-1],x6[WIDTH-1:1]};
				 y7 = {x7[WIDTH-1],x7[WIDTH-1:1]};
				 y8 = {x8[WIDTH-1],x8[WIDTH-1:1]};
				 y9 = {x9[WIDTH-1],x9[WIDTH-1:1]};
				 y10 = {x10[WIDTH-1],x10[WIDTH-1:1]};
				 y11 = {x11[WIDTH-1],x11[WIDTH-1:1]};
				 y12 = {x12[WIDTH-1],x12[WIDTH-1:1]};
				 y13 = {x13[WIDTH-1],x13[WIDTH-1:1]};
				 y14 = {x14[WIDTH-1],x14[WIDTH-1:1]};
				 y15 = {x15[WIDTH-1],x15[WIDTH-1:1]};
				 y16 = {x16[WIDTH-1],x16[WIDTH-1:1]};
				 y17 = {x17[WIDTH-1],x17[WIDTH-1:1]};
				 y18 = {x18[WIDTH-1],x18[WIDTH-1:1]};
				 y19 = {x19[WIDTH-1],x19[WIDTH-1:1]};
				 y20 = {x20[WIDTH-1],x20[WIDTH-1:1]};
				 y21 = {x21[WIDTH-1],x21[WIDTH-1:1]};
				 y22 = {x22[WIDTH-1],x22[WIDTH-1:1]};
				 y23 = {x23[WIDTH-1],x23[WIDTH-1:1]};
				 y24 = {x24[WIDTH-1],x24[WIDTH-1:1]};
				 y25 = {x25[WIDTH-1],x25[WIDTH-1:1]};
				 y26 = {x26[WIDTH-1],x26[WIDTH-1:1]};
				 y27 = {x27[WIDTH-1],x27[WIDTH-1:1]};
				 y28 = {x28[WIDTH-1],x28[WIDTH-1:1]};
				 y29 = {x29[WIDTH-1],x29[WIDTH-1:1]};
				 y30 = {x30[WIDTH-1],x30[WIDTH-1:1]};
				 y31 = {x31[WIDTH-1],x31[WIDTH-1:1]};
		end
		else if((size == 1) && (dct))begin
			
				y0 = {x0[WIDTH-1],x0[WIDTH-1],x0[WIDTH-1:2]};
				y1 = {x1[WIDTH-1],x1[WIDTH-1],x1[WIDTH-1:2]};
				y2 = {x2[WIDTH-1],x2[WIDTH-1],x2[WIDTH-1:2]};
				y3 = {x3[WIDTH-1],x3[WIDTH-1],x3[WIDTH-1:2]};
				y4 = {x4[WIDTH-1],x4[WIDTH-1],x4[WIDTH-1:2]};
				y5 = {x5[WIDTH-1],x5[WIDTH-1],x5[WIDTH-1:2]};
				y6 = {x6[WIDTH-1],x6[WIDTH-1],x6[WIDTH-1:2]};
				y7 = {x7[WIDTH-1],x7[WIDTH-1],x7[WIDTH-1:2]};
				y8 = {x8[WIDTH-1],x8[WIDTH-1],x8[WIDTH-1:2]};
				y9 = {x9[WIDTH-1],x9[WIDTH-1],x9[WIDTH-1:2]};
				y10 = {x10[WIDTH-1],x10[WIDTH-1],x10[WIDTH-1:2]};
				y11 = {x11[WIDTH-1],x11[WIDTH-1],x11[WIDTH-1:2]};
				y12 = {x12[WIDTH-1],x12[WIDTH-1],x12[WIDTH-1:2]};
				y13 = {x13[WIDTH-1],x13[WIDTH-1],x13[WIDTH-1:2]};
				y14 = {x14[WIDTH-1],x14[WIDTH-1],x14[WIDTH-1:2]};
				y15 = {x15[WIDTH-1],x15[WIDTH-1],x15[WIDTH-1:2]};
				y16 = {x16[WIDTH-1],x16[WIDTH-1],x16[WIDTH-1:2]};
				y17 = {x17[WIDTH-1],x17[WIDTH-1],x17[WIDTH-1:2]};
				y18 = {x18[WIDTH-1],x18[WIDTH-1],x18[WIDTH-1:2]};
				y19 = {x19[WIDTH-1],x19[WIDTH-1],x19[WIDTH-1:2]};
				y20 = {x20[WIDTH-1],x20[WIDTH-1],x20[WIDTH-1:2]};
				y21 = {x21[WIDTH-1],x21[WIDTH-1],x21[WIDTH-1:2]};
				y22 = {x22[WIDTH-1],x22[WIDTH-1],x22[WIDTH-1:2]};
				y23 = {x23[WIDTH-1],x23[WIDTH-1],x23[WIDTH-1:2]};
				y24 = {x24[WIDTH-1],x24[WIDTH-1],x24[WIDTH-1:2]};
				y25 = {x25[WIDTH-1],x25[WIDTH-1],x25[WIDTH-1:2]};
				y26 = {x26[WIDTH-1],x26[WIDTH-1],x26[WIDTH-1:2]};
				y27 = {x27[WIDTH-1],x27[WIDTH-1],x27[WIDTH-1:2]};
				y28 = {x28[WIDTH-1],x28[WIDTH-1],x28[WIDTH-1:2]};
				y29 = {x29[WIDTH-1],x29[WIDTH-1],x29[WIDTH-1:2]};
				y30 = {x30[WIDTH-1],x30[WIDTH-1],x30[WIDTH-1:2]};
				y31 = {x31[WIDTH-1],x31[WIDTH-1],x31[WIDTH-1:2]};
			
		end
		else if((size == 2)&& (dct)) begin
			
				y0 = {x0[WIDTH-1],x0[WIDTH-1],x0[WIDTH-1],x0[WIDTH-1:3]};
				y1 = {x1[WIDTH-1],x1[WIDTH-1],x1[WIDTH-1],x1[WIDTH-1:3]};
				y2 = {x2[WIDTH-1],x2[WIDTH-1],x2[WIDTH-1],x2[WIDTH-1:3]};
				y3 = {x3[WIDTH-1],x3[WIDTH-1],x3[WIDTH-1],x3[WIDTH-1:3]};
				y4 = {x4[WIDTH-1],x4[WIDTH-1],x4[WIDTH-1],x4[WIDTH-1:3]};
				y5 = {x5[WIDTH-1],x5[WIDTH-1],x5[WIDTH-1],x5[WIDTH-1:3]};
				y6 = {x6[WIDTH-1],x6[WIDTH-1],x6[WIDTH-1],x6[WIDTH-1:3]};
				y7 = {x7[WIDTH-1],x7[WIDTH-1],x7[WIDTH-1],x7[WIDTH-1:3]};
				y8 = {x8[WIDTH-1],x8[WIDTH-1],x8[WIDTH-1],x8[WIDTH-1:3]};
				y9 = {x9[WIDTH-1],x9[WIDTH-1],x9[WIDTH-1],x9[WIDTH-1:3]};
				y10 = {x10[WIDTH-1],x10[WIDTH-1],x10[WIDTH-1],x10[WIDTH-1:3]};
				y11 = {x11[WIDTH-1],x11[WIDTH-1],x11[WIDTH-1],x11[WIDTH-1:3]};
				y12 = {x12[WIDTH-1],x12[WIDTH-1],x12[WIDTH-1],x12[WIDTH-1:3]};
				y13 = {x13[WIDTH-1],x13[WIDTH-1],x13[WIDTH-1],x13[WIDTH-1:3]};
				y14 = {x14[WIDTH-1],x14[WIDTH-1],x14[WIDTH-1],x14[WIDTH-1:3]};
				y15 = {x15[WIDTH-1],x15[WIDTH-1],x15[WIDTH-1],x15[WIDTH-1:3]};
				y16 = {x16[WIDTH-1],x16[WIDTH-1],x16[WIDTH-1],x16[WIDTH-1:3]};
				y17 = {x17[WIDTH-1],x17[WIDTH-1],x17[WIDTH-1],x17[WIDTH-1:3]};
				y18 = {x18[WIDTH-1],x18[WIDTH-1],x18[WIDTH-1],x18[WIDTH-1:3]};
				y19 = {x19[WIDTH-1],x19[WIDTH-1],x19[WIDTH-1],x19[WIDTH-1:3]};
				y20 = {x20[WIDTH-1],x20[WIDTH-1],x20[WIDTH-1],x20[WIDTH-1:3]};
				y21 = {x21[WIDTH-1],x21[WIDTH-1],x21[WIDTH-1],x21[WIDTH-1:3]};
				y22 = {x22[WIDTH-1],x22[WIDTH-1],x22[WIDTH-1],x22[WIDTH-1:3]};
				y23 = {x23[WIDTH-1],x23[WIDTH-1],x23[WIDTH-1],x23[WIDTH-1:3]};
				y24 = {x24[WIDTH-1],x24[WIDTH-1],x24[WIDTH-1],x24[WIDTH-1:3]};
				y25 = {x25[WIDTH-1],x25[WIDTH-1],x25[WIDTH-1],x25[WIDTH-1:3]};
				y26 = {x26[WIDTH-1],x26[WIDTH-1],x26[WIDTH-1],x26[WIDTH-1:3]};
				y27 = {x27[WIDTH-1],x27[WIDTH-1],x27[WIDTH-1],x27[WIDTH-1:3]};
				y28 = {x28[WIDTH-1],x28[WIDTH-1],x28[WIDTH-1],x28[WIDTH-1:3]};
				y29 = {x29[WIDTH-1],x29[WIDTH-1],x29[WIDTH-1],x29[WIDTH-1:3]};
				y30 = {x30[WIDTH-1],x30[WIDTH-1],x30[WIDTH-1],x30[WIDTH-1:3]};
				y31 = {x31[WIDTH-1],x31[WIDTH-1],x31[WIDTH-1],x31[WIDTH-1:3]};
			
		end
		else if (dct) begin
		
				y0 = {x0[WIDTH-1],x0[WIDTH-1],x0[WIDTH-1],x0[WIDTH-1],x0[WIDTH-1:4]};
				y1 = {x1[WIDTH-1],x1[WIDTH-1],x1[WIDTH-1],x1[WIDTH-1],x1[WIDTH-1:4]};
				y2 = {x2[WIDTH-1],x2[WIDTH-1],x2[WIDTH-1],x2[WIDTH-1],x2[WIDTH-1:4]};
				y3 = {x3[WIDTH-1],x3[WIDTH-1],x3[WIDTH-1],x3[WIDTH-1],x3[WIDTH-1:4]};
				y4 = {x4[WIDTH-1],x4[WIDTH-1],x4[WIDTH-1],x4[WIDTH-1],x4[WIDTH-1:4]};
				y5 = {x5[WIDTH-1],x5[WIDTH-1],x5[WIDTH-1],x5[WIDTH-1],x5[WIDTH-1:4]};
				y6 = {x6[WIDTH-1],x6[WIDTH-1],x6[WIDTH-1],x6[WIDTH-1],x6[WIDTH-1:4]};
				y7 = {x7[WIDTH-1],x7[WIDTH-1],x7[WIDTH-1],x7[WIDTH-1],x7[WIDTH-1:4]};
				y8 = {x8[WIDTH-1],x8[WIDTH-1],x8[WIDTH-1],x8[WIDTH-1],x8[WIDTH-1:4]};
				y9 = {x9[WIDTH-1],x9[WIDTH-1],x9[WIDTH-1],x9[WIDTH-1],x9[WIDTH-1:4]};
				y10 = {x10[WIDTH-1],x10[WIDTH-1],x10[WIDTH-1],x10[WIDTH-1],x10[WIDTH-1:4]};
				y11 = {x11[WIDTH-1],x11[WIDTH-1],x11[WIDTH-1],x11[WIDTH-1],x11[WIDTH-1:4]};
				y12 = {x12[WIDTH-1],x12[WIDTH-1],x12[WIDTH-1],x12[WIDTH-1],x12[WIDTH-1:4]};
				y13 = {x13[WIDTH-1],x13[WIDTH-1],x13[WIDTH-1],x13[WIDTH-1],x13[WIDTH-1:4]};
				y14 = {x14[WIDTH-1],x14[WIDTH-1],x14[WIDTH-1],x14[WIDTH-1],x14[WIDTH-1:4]};
				y15 = {x15[WIDTH-1],x15[WIDTH-1],x15[WIDTH-1],x15[WIDTH-1],x15[WIDTH-1:4]};
				y16 = {x16[WIDTH-1],x16[WIDTH-1],x16[WIDTH-1],x16[WIDTH-1],x16[WIDTH-1:4]};
				y17 = {x17[WIDTH-1],x17[WIDTH-1],x17[WIDTH-1],x17[WIDTH-1],x17[WIDTH-1:4]};
				y18 = {x18[WIDTH-1],x18[WIDTH-1],x18[WIDTH-1],x18[WIDTH-1],x18[WIDTH-1:4]};
				y19 = {x19[WIDTH-1],x19[WIDTH-1],x19[WIDTH-1],x19[WIDTH-1],x19[WIDTH-1:4]};
				y20 = {x20[WIDTH-1],x20[WIDTH-1],x20[WIDTH-1],x20[WIDTH-1],x20[WIDTH-1:4]};
				y21 = {x21[WIDTH-1],x21[WIDTH-1],x21[WIDTH-1],x21[WIDTH-1],x21[WIDTH-1:4]};
				y22 = {x22[WIDTH-1],x22[WIDTH-1],x22[WIDTH-1],x22[WIDTH-1],x22[WIDTH-1:4]};
				y23 = {x23[WIDTH-1],x23[WIDTH-1],x23[WIDTH-1],x23[WIDTH-1],x23[WIDTH-1:4]};
				y24 = {x24[WIDTH-1],x24[WIDTH-1],x24[WIDTH-1],x24[WIDTH-1],x24[WIDTH-1:4]};
				y25 = {x25[WIDTH-1],x25[WIDTH-1],x25[WIDTH-1],x25[WIDTH-1],x25[WIDTH-1:4]};
				y26 = {x26[WIDTH-1],x26[WIDTH-1],x26[WIDTH-1],x26[WIDTH-1],x26[WIDTH-1:4]};
				y27 = {x27[WIDTH-1],x27[WIDTH-1],x27[WIDTH-1],x27[WIDTH-1],x27[WIDTH-1:4]};
				y28 = {x28[WIDTH-1],x28[WIDTH-1],x28[WIDTH-1],x28[WIDTH-1],x28[WIDTH-1:4]};
				y29 = {x29[WIDTH-1],x29[WIDTH-1],x29[WIDTH-1],x29[WIDTH-1],x29[WIDTH-1:4]};
				y30 = {x30[WIDTH-1],x30[WIDTH-1],x30[WIDTH-1],x30[WIDTH-1],x30[WIDTH-1:4]};
				y31 = {x31[WIDTH-1],x31[WIDTH-1],x31[WIDTH-1],x31[WIDTH-1],x31[WIDTH-1:4]};
		
		end
		else begin
				y0 = {x0[WIDTH-1],x0[WIDTH-1],x0[WIDTH-1],x0[WIDTH-1],x0[WIDTH-1],x0[WIDTH-1],x0[WIDTH-1],x0[WIDTH-1:7]};
				y1 = {x1[WIDTH-1],x1[WIDTH-1],x1[WIDTH-1],x1[WIDTH-1],x1[WIDTH-1],x1[WIDTH-1],x1[WIDTH-1],x1[WIDTH-1:7]};
				y2 = {x2[WIDTH-1],x2[WIDTH-1],x2[WIDTH-1],x2[WIDTH-1],x2[WIDTH-1],x2[WIDTH-1],x2[WIDTH-1],x2[WIDTH-1:7]};
				y3 = {x3[WIDTH-1],x3[WIDTH-1],x3[WIDTH-1],x3[WIDTH-1],x3[WIDTH-1],x3[WIDTH-1],x3[WIDTH-1],x3[WIDTH-1:7]};
				y4 = {x4[WIDTH-1],x4[WIDTH-1],x4[WIDTH-1],x4[WIDTH-1],x4[WIDTH-1],x4[WIDTH-1],x4[WIDTH-1],x4[WIDTH-1:7]};
				y5 = {x5[WIDTH-1],x5[WIDTH-1],x5[WIDTH-1],x5[WIDTH-1],x5[WIDTH-1],x5[WIDTH-1],x5[WIDTH-1],x5[WIDTH-1:7]};
				y6 = {x6[WIDTH-1],x6[WIDTH-1],x6[WIDTH-1],x6[WIDTH-1],x6[WIDTH-1],x6[WIDTH-1],x6[WIDTH-1],x6[WIDTH-1:7]};
				y7 = {x7[WIDTH-1],x7[WIDTH-1],x7[WIDTH-1],x7[WIDTH-1],x7[WIDTH-1],x7[WIDTH-1],x7[WIDTH-1],x7[WIDTH-1:7]};
				y8 = {x8[WIDTH-1],x8[WIDTH-1],x8[WIDTH-1],x8[WIDTH-1],x8[WIDTH-1],x8[WIDTH-1],x8[WIDTH-1],x8[WIDTH-1:7]};
				y9 = {x9[WIDTH-1],x9[WIDTH-1],x9[WIDTH-1],x9[WIDTH-1],x9[WIDTH-1],x9[WIDTH-1],x9[WIDTH-1],x9[WIDTH-1:7]};
				y10 = {x10[WIDTH-1],x10[WIDTH-1],x10[WIDTH-1],x10[WIDTH-1],x10[WIDTH-1],x10[WIDTH-1],x10[WIDTH-1],x10[WIDTH-1:7]};
				y11 = {x11[WIDTH-1],x11[WIDTH-1],x11[WIDTH-1],x11[WIDTH-1],x11[WIDTH-1],x11[WIDTH-1],x11[WIDTH-1],x11[WIDTH-1:7]};
				y12 = {x12[WIDTH-1],x12[WIDTH-1],x12[WIDTH-1],x12[WIDTH-1],x12[WIDTH-1],x12[WIDTH-1],x12[WIDTH-1],x12[WIDTH-1:7]};
				y13 = {x13[WIDTH-1],x13[WIDTH-1],x13[WIDTH-1],x13[WIDTH-1],x13[WIDTH-1],x13[WIDTH-1],x13[WIDTH-1],x13[WIDTH-1:7]};
				y14 = {x14[WIDTH-1],x14[WIDTH-1],x14[WIDTH-1],x14[WIDTH-1],x14[WIDTH-1],x14[WIDTH-1],x14[WIDTH-1],x14[WIDTH-1:7]};
				y15 = {x15[WIDTH-1],x15[WIDTH-1],x15[WIDTH-1],x15[WIDTH-1],x15[WIDTH-1],x15[WIDTH-1],x15[WIDTH-1],x15[WIDTH-1:7]};
				y16 = {x16[WIDTH-1],x16[WIDTH-1],x16[WIDTH-1],x16[WIDTH-1],x16[WIDTH-1],x16[WIDTH-1],x16[WIDTH-1],x16[WIDTH-1:7]};
				y17 = {x17[WIDTH-1],x17[WIDTH-1],x17[WIDTH-1],x17[WIDTH-1],x17[WIDTH-1],x17[WIDTH-1],x17[WIDTH-1],x17[WIDTH-1:7]};
				y18 = {x18[WIDTH-1],x18[WIDTH-1],x18[WIDTH-1],x18[WIDTH-1],x18[WIDTH-1],x18[WIDTH-1],x18[WIDTH-1],x18[WIDTH-1:7]};
				y19 = {x19[WIDTH-1],x19[WIDTH-1],x19[WIDTH-1],x19[WIDTH-1],x19[WIDTH-1],x19[WIDTH-1],x19[WIDTH-1],x19[WIDTH-1:7]};
				y20 = {x20[WIDTH-1],x20[WIDTH-1],x20[WIDTH-1],x20[WIDTH-1],x20[WIDTH-1],x20[WIDTH-1],x20[WIDTH-1],x20[WIDTH-1:7]};
				y21 = {x21[WIDTH-1],x21[WIDTH-1],x21[WIDTH-1],x21[WIDTH-1],x21[WIDTH-1],x21[WIDTH-1],x21[WIDTH-1],x21[WIDTH-1:7]};
				y22 = {x22[WIDTH-1],x22[WIDTH-1],x22[WIDTH-1],x22[WIDTH-1],x22[WIDTH-1],x22[WIDTH-1],x22[WIDTH-1],x22[WIDTH-1:7]};
				y23 = {x23[WIDTH-1],x23[WIDTH-1],x23[WIDTH-1],x23[WIDTH-1],x23[WIDTH-1],x23[WIDTH-1],x23[WIDTH-1],x23[WIDTH-1:7]};
				y24 = {x24[WIDTH-1],x24[WIDTH-1],x24[WIDTH-1],x24[WIDTH-1],x24[WIDTH-1],x24[WIDTH-1],x24[WIDTH-1],x24[WIDTH-1:7]};
				y25 = {x25[WIDTH-1],x25[WIDTH-1],x25[WIDTH-1],x25[WIDTH-1],x25[WIDTH-1],x25[WIDTH-1],x25[WIDTH-1],x25[WIDTH-1:7]};
				y26 = {x26[WIDTH-1],x26[WIDTH-1],x26[WIDTH-1],x26[WIDTH-1],x26[WIDTH-1],x26[WIDTH-1],x26[WIDTH-1],x26[WIDTH-1:7]};
				y27 = {x27[WIDTH-1],x27[WIDTH-1],x27[WIDTH-1],x27[WIDTH-1],x27[WIDTH-1],x27[WIDTH-1],x27[WIDTH-1],x27[WIDTH-1:7]};
				y28 = {x28[WIDTH-1],x28[WIDTH-1],x28[WIDTH-1],x28[WIDTH-1],x28[WIDTH-1],x28[WIDTH-1],x28[WIDTH-1],x28[WIDTH-1:7]};
				y29 = {x29[WIDTH-1],x29[WIDTH-1],x29[WIDTH-1],x29[WIDTH-1],x29[WIDTH-1],x29[WIDTH-1],x29[WIDTH-1],x29[WIDTH-1:7]};
				y30 = {x30[WIDTH-1],x30[WIDTH-1],x30[WIDTH-1],x30[WIDTH-1],x30[WIDTH-1],x30[WIDTH-1],x30[WIDTH-1],x30[WIDTH-1:7]};
				y31 = {x31[WIDTH-1],x31[WIDTH-1],x31[WIDTH-1],x31[WIDTH-1],x31[WIDTH-1],x31[WIDTH-1],x31[WIDTH-1],x31[WIDTH-1:7]};
		end
		
	end
	
endmodule
	
	
	
	
	