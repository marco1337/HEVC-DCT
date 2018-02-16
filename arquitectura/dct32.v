module dct32
#(
parameter	WIDTH_X = 9,
parameter	WIDTH_Y = 21
)
(	
	
	input wire[WIDTH_X-1:0] x0,
	input wire[WIDTH_X-1:0] x1,
	input wire[WIDTH_X-1:0] x2,
	input wire[WIDTH_X-1:0] x3,
	input wire[WIDTH_X-1:0] x4,
	input wire[WIDTH_X-1:0] x5,
	input wire[WIDTH_X-1:0] x6,
	input wire[WIDTH_X-1:0] x7,
	input wire[WIDTH_X-1:0] x8,
	input wire[WIDTH_X-1:0] x9,
	input wire[WIDTH_X-1:0] x10,
	input wire[WIDTH_X-1:0] x11,
	input wire[WIDTH_X-1:0] x12,
	input wire[WIDTH_X-1:0] x13,
	input wire[WIDTH_X-1:0] x14,
	input wire[WIDTH_X-1:0] x15,
	input wire[WIDTH_X-1:0] x16,
	input wire[WIDTH_X-1:0] x17,
	input wire[WIDTH_X-1:0] x18,
	input wire[WIDTH_X-1:0] x19,
	input wire[WIDTH_X-1:0] x20,
	input wire[WIDTH_X-1:0] x21,
	input wire[WIDTH_X-1:0] x22,
	input wire[WIDTH_X-1:0] x23,
	input wire[WIDTH_X-1:0] x24,
	input wire[WIDTH_X-1:0] x25,
	input wire[WIDTH_X-1:0] x26,
	input wire[WIDTH_X-1:0] x27,
	input wire[WIDTH_X-1:0] x28,
	input wire[WIDTH_X-1:0] x29,
	input wire[WIDTH_X-1:0] x30,
	input wire[WIDTH_X-1:0] x31,
	
	input wire clk,rst,
	input wire load,
	
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
	reg signed [WIDTH_X-1:0] x0_reg;
	reg signed [WIDTH_X-1:0] x1_reg;
	reg signed [WIDTH_X-1:0] x2_reg;
	reg signed [WIDTH_X-1:0] x3_reg;
	reg signed [WIDTH_X-1:0] x4_reg;
	reg signed [WIDTH_X-1:0] x5_reg;
	reg signed [WIDTH_X-1:0] x6_reg;
	reg signed [WIDTH_X-1:0] x7_reg;
	reg signed [WIDTH_X-1:0] x8_reg;
	reg signed [WIDTH_X-1:0] x9_reg;
	reg signed [WIDTH_X-1:0] x10_reg;
	reg signed [WIDTH_X-1:0] x11_reg;
	reg signed [WIDTH_X-1:0] x12_reg;
	reg signed [WIDTH_X-1:0] x13_reg;
	reg signed [WIDTH_X-1:0] x14_reg;
	reg signed [WIDTH_X-1:0] x15_reg;
	reg signed [WIDTH_X-1:0] x16_reg;
	reg signed [WIDTH_X-1:0] x17_reg;
	reg signed [WIDTH_X-1:0] x18_reg;
	reg signed [WIDTH_X-1:0] x19_reg;
	reg signed [WIDTH_X-1:0] x20_reg;
	reg signed [WIDTH_X-1:0] x21_reg;
	reg signed [WIDTH_X-1:0] x22_reg;
	reg signed [WIDTH_X-1:0] x23_reg;
	reg signed [WIDTH_X-1:0] x24_reg;
	reg signed [WIDTH_X-1:0] x25_reg;
	reg signed [WIDTH_X-1:0] x26_reg;
	reg signed [WIDTH_X-1:0] x27_reg;
	reg signed [WIDTH_X-1:0] x28_reg;
	reg signed [WIDTH_X-1:0] x29_reg;
	reg signed [WIDTH_X-1:0] x30_reg;
	reg signed [WIDTH_X-1:0] x31_reg;
	
	reg signed [WIDTH_Y-1:0] a0_reg;
	reg signed [WIDTH_Y-1:0] a1_reg;
	reg signed [WIDTH_Y-1:0] a2_reg;
	reg signed [WIDTH_Y-1:0] a3_reg;
	reg signed [WIDTH_Y-1:0] a4_reg;
	reg signed [WIDTH_Y-1:0] a5_reg;
	reg signed [WIDTH_Y-1:0] a6_reg;
	reg signed [WIDTH_Y-1:0] a7_reg;
	reg signed [WIDTH_Y-1:0] a8_reg;
	reg signed [WIDTH_Y-1:0] a9_reg;
	reg signed [WIDTH_Y-1:0] a10_reg;
	reg signed [WIDTH_Y-1:0] a11_reg;
	reg signed [WIDTH_Y-1:0] a12_reg;
	reg signed [WIDTH_Y-1:0] a13_reg;
	reg signed [WIDTH_Y-1:0] a14_reg;
	reg signed [WIDTH_Y-1:0] a15_reg;
	
	reg signed [WIDTH_Y-1:0] b0_reg;
	reg signed [WIDTH_Y-1:0] b1_reg;
	reg signed [WIDTH_Y-1:0] b2_reg;
	reg signed [WIDTH_Y-1:0] b3_reg;
	reg signed [WIDTH_Y-1:0] b4_reg;
	reg signed [WIDTH_Y-1:0] b5_reg;
	reg signed [WIDTH_Y-1:0] b6_reg;
	reg signed [WIDTH_Y-1:0] b7_reg;
	reg signed [WIDTH_Y-1:0] b8_reg;
	reg signed [WIDTH_Y-1:0] b9_reg;
	reg signed [WIDTH_Y-1:0] b10_reg;
	reg signed [WIDTH_Y-1:0] b11_reg;
	reg signed [WIDTH_Y-1:0] b12_reg;
	reg signed [WIDTH_Y-1:0] b13_reg;
	reg signed [WIDTH_Y-1:0] b14_reg;
	reg signed [WIDTH_Y-1:0] b15_reg;
	
	wire signed [WIDTH_Y-1:0] a0_next;
	wire signed [WIDTH_Y-1:0] a1_next;
	wire signed [WIDTH_Y-1:0] a2_next;
	wire signed [WIDTH_Y-1:0] a3_next;
	wire signed [WIDTH_Y-1:0] a4_next;
	wire signed [WIDTH_Y-1:0] a5_next;
	wire signed [WIDTH_Y-1:0] a6_next;
	wire signed [WIDTH_Y-1:0] a7_next;
	wire signed [WIDTH_Y-1:0] a8_next;
	wire signed [WIDTH_Y-1:0] a9_next;
	wire signed [WIDTH_Y-1:0] a10_next;
	wire signed [WIDTH_Y-1:0] a11_next;
	wire signed [WIDTH_Y-1:0] a12_next;
	wire signed [WIDTH_Y-1:0] a13_next;
	wire signed [WIDTH_Y-1:0] a14_next;
	wire signed [WIDTH_Y-1:0] a15_next;
	
	wire signed [WIDTH_Y-1:0] b0_next;
	wire signed [WIDTH_Y-1:0] b1_next;
	wire signed [WIDTH_Y-1:0] b2_next;
	wire signed [WIDTH_Y-1:0] b3_next;
	wire signed [WIDTH_Y-1:0] b4_next;
	wire signed [WIDTH_Y-1:0] b5_next;
	wire signed [WIDTH_Y-1:0] b6_next;
	wire signed [WIDTH_Y-1:0] b7_next;
	wire signed [WIDTH_Y-1:0] b8_next;
	wire signed [WIDTH_Y-1:0] b9_next;
	wire signed [WIDTH_Y-1:0] b10_next;
	wire signed [WIDTH_Y-1:0] b11_next;
	wire signed [WIDTH_Y-1:0] b12_next;
	wire signed [WIDTH_Y-1:0] b13_next;
	wire signed [WIDTH_Y-1:0] b14_next;
	wire signed [WIDTH_Y-1:0] b15_next;
	
	dct16
	#(
		.WIDTH_X	(WIDTH_X + 1),
		.WIDTH_Y (WIDTH_Y)
	)
	dct16_1
	(
	 .clk      ( clk  ),
    .rst      ( rst  ),
    .load     ( load ),
    .x0 ( a0_reg ),
	 .x1 ( a1_reg ),
	 .x2 ( a2_reg ),
	 .x3 ( a3_reg ),
	 .x4 ( a4_reg ),
	 .x5 ( a5_reg ),
	 .x6 ( a6_reg ),
	 .x7 ( a7_reg ),
	 .x8 ( a8_reg ),
	 .x9 ( a9_reg ),
	 .x10 ( a10_reg ),
	 .x11 ( a11_reg ),
	 .x12 ( a12_reg ),
	 .x13 ( a13_reg ),
	 .x14 ( a14_reg ),
	 .x15 ( a15_reg ),
    .y0 ( y0 ), 
	 .y1 ( y2 ), 
	 .y2 ( y4 ), 
	 .y3 ( y6 ),
	 .y4 ( y8 ), 
	 .y5 ( y10 ), 
	 .y6 ( y12 ), 
	 .y7 ( y14 ),
	 .y8 ( y16 ),
	 .y9 ( y18 ), 
	 .y10 ( y20 ), 
	 .y11 ( y22 ), 
	 .y12 ( y24 ),
	 .y13 ( y26 ), 
	 .y14 ( y28 ), 
	 .y15 ( y30 ) 
	);
	
	always @ (posedge clk)
	begin
		if(rst) begin
				x0_reg <= 0;
				x1_reg <= 0;
				x2_reg <= 0;
				x3_reg <= 0;
				x4_reg <= 0;
				x5_reg <= 0;
				x6_reg <= 0;
				x7_reg <= 0;
				x8_reg <= 0;
				x9_reg <= 0;
				x10_reg <= 0;
				x11_reg <= 0;
				x12_reg <= 0;
				x13_reg <= 0;
				x14_reg <= 0;
				x15_reg <= 0;
				x16_reg <= 0;
				x17_reg <= 0;
				x18_reg <= 0;
				x19_reg <= 0;
				x20_reg <= 0;
				x21_reg <= 0;
				x22_reg <= 0;
				x23_reg <= 0;
				x24_reg <= 0;
				x25_reg <= 0;
				x26_reg <= 0;
				x27_reg <= 0;
				x28_reg <= 0;
				x29_reg <= 0;
				x30_reg <= 0;
				x31_reg <= 0;
				
				a0_reg <= 0;
				a1_reg <= 0;
				a2_reg <= 0;
				a3_reg <= 0;
				a4_reg <= 0;
				a5_reg <= 0;
				a6_reg <= 0;
				a7_reg <= 0;
				a8_reg <= 0;
				a9_reg <= 0;
				a10_reg <= 0;
				a11_reg <= 0;
				a12_reg <= 0;
				a13_reg <= 0;
				a14_reg <= 0;
				a15_reg <= 0;
				
				b0_reg <= 0;
				b1_reg <= 0;
				b2_reg <= 0;
				b3_reg <= 0;
				b4_reg <= 0;
				b5_reg <= 0;
				b6_reg <= 0;
				b7_reg <= 0;
				b8_reg <= 0;
				b9_reg <= 0;
				b10_reg <= 0;
				b11_reg <= 0;
				b12_reg <= 0;
				b13_reg <= 0;
				b14_reg <= 0;
				b15_reg <= 0;
			
		end
		else begin

			if (load) begin
				x0_reg <= x0;
				x1_reg <= x1;
				x2_reg <= x2;
				x3_reg <= x3;
				x4_reg <= x4;
				x5_reg <= x5;
				x6_reg <= x6;
				x7_reg <= x7;
				x8_reg <= x8;
				x9_reg <= x9;
				x10_reg <= x10;
				x11_reg <= x11;
				x12_reg <= x12;
				x13_reg <= x13;
				x14_reg <= x14;
				x15_reg <= x15;
				x16_reg <= x16;
				x17_reg <= x17;
				x18_reg <= x18;
				x19_reg <= x19;
				x20_reg <= x20;
				x21_reg <= x21;
				x22_reg <= x22;
				x23_reg <= x23;
				x24_reg <= x24;
				x25_reg <= x25;
				x26_reg <= x26;
				x27_reg <= x27;
				x28_reg <= x28;
				x29_reg <= x29;
				x30_reg <= x30;
				x31_reg <= x31;
			end
				
				a0_reg <= a0_next;
				a1_reg <= a1_next;
				a2_reg <= a2_next;
				a3_reg <= a3_next;
				a4_reg <= a4_next;
				a5_reg <= a5_next;
				a6_reg <= a6_next;
				a7_reg <= a7_next;
				a8_reg <= a8_next;
				a9_reg <= a9_next;
				a10_reg <= a10_next;
				a11_reg <= a11_next;
				a12_reg <= a12_next;
				a13_reg <= a13_next;
				a14_reg <= a14_next;
				a15_reg <= a15_next;
				
				b0_reg <= b0_next;
				b1_reg <= b1_next;
				b2_reg <= b2_next;
				b3_reg <= b3_next;
				b4_reg <= b4_next;
				b5_reg <= b5_next;
				b6_reg <= b6_next;
				b7_reg <= b7_next;
				b8_reg <= b8_next;
				b9_reg <= b9_next;
				b10_reg <= b10_next;
				b11_reg <= b11_next;
				b12_reg <= b12_next;
				b13_reg <= b13_next;
				b14_reg <= b14_next;
				b15_reg <= b15_next;
				
			
		end
	end
	
	assign a0_next = x0_reg + x31_reg;
	assign a1_next = x1_reg + x30_reg;
	assign a2_next = x2_reg + x29_reg;
	assign a3_next = x3_reg + x28_reg;
	assign a4_next = x4_reg + x27_reg;
	assign a5_next = x5_reg + x26_reg;
	assign a6_next = x6_reg + x25_reg;
	assign a7_next = x7_reg + x24_reg;
	assign a8_next = x8_reg + x23_reg;
	assign a9_next = x9_reg + x22_reg;
	assign a10_next = x10_reg + x21_reg;
	assign a11_next = x11_reg + x20_reg;
	assign a12_next = x12_reg + x19_reg;
	assign a13_next = x13_reg + x18_reg;
	assign a14_next = x14_reg + x17_reg;
	assign a15_next = x15_reg + x16_reg;
	
	assign b0_next = x0_reg - x31_reg;
	assign b1_next = x1_reg - x30_reg;
	assign b2_next = x2_reg - x29_reg;
	assign b3_next = x3_reg - x28_reg;
	assign b4_next = x4_reg - x27_reg;
	assign b5_next = x5_reg - x26_reg;
	assign b6_next = x6_reg - x25_reg;
	assign b7_next = x7_reg - x24_reg;
	assign b8_next = x8_reg - x23_reg;
	assign b9_next = x9_reg - x22_reg;
	assign b10_next = x10_reg - x21_reg;
	assign b11_next = x11_reg - x20_reg;
	assign b12_next = x12_reg - x19_reg;
	assign b13_next = x13_reg - x18_reg;
	assign b14_next = x14_reg - x17_reg;
	assign b15_next = x15_reg - x16_reg;
	
	shift_add32
	#(
		.WIDTH (WIDTH_Y)
	)
	shift_add32_1
	(
		.clk      ( clk  ),
		.rst      ( rst  ),
		.b0 (b0_reg),
		.b1 (b1_reg),
		.b2 (b2_reg),
		.b3 (b3_reg),
		.b4 (b4_reg),
		.b5 (b5_reg),
		.b6 (b6_reg),
		.b7 (b7_reg),
		.b8 (b8_reg),
		.b9 (b9_reg),
		.b10 (b10_reg),
		.b11 (b11_reg),
		.b12 (b12_reg),
		.b13 (b13_reg),
		.b14 (b14_reg),
		.b15 (b15_reg),
		.y1 (y1),
		.y3 (y3),
		.y5 (y5),
		.y7 (y7),
		.y9 (y9),
		.y11 (y11),
		.y13 (y13),
		.y15 (y15),
		.y17 (y17),
		.y19 (y19),
		.y21 (y21),
		.y23 (y23),
		.y25 (y25),
		.y27 (y27),
		.y29 (y29),
		.y31 (y31)
	);
	
endmodule
