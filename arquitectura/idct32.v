module idct32
#(
	parameter WIDTH_X = 16,
	parameter WIDTH_Y = 22
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
	reg signed[WIDTH_X-1:0] x0_reg;
	reg signed[WIDTH_X-1:0] x1_reg;
	reg signed[WIDTH_X-1:0] x2_reg;
	reg signed[WIDTH_X-1:0] x3_reg;
	reg signed[WIDTH_X-1:0] x4_reg;
	reg signed[WIDTH_X-1:0] x5_reg;
	reg signed[WIDTH_X-1:0] x6_reg;
	reg signed[WIDTH_X-1:0] x7_reg;
	reg signed[WIDTH_X-1:0] x8_reg;
	reg signed[WIDTH_X-1:0] x9_reg;
	reg signed[WIDTH_X-1:0] x10_reg;
	reg signed[WIDTH_X-1:0] x11_reg;
	reg signed[WIDTH_X-1:0] x12_reg;
	reg signed[WIDTH_X-1:0] x13_reg;
	reg signed[WIDTH_X-1:0] x14_reg;
	reg signed[WIDTH_X-1:0] x15_reg;
	reg signed[WIDTH_X-1:0] x16_reg;
	reg signed[WIDTH_X-1:0] x17_reg;
	reg signed[WIDTH_X-1:0] x18_reg;
	reg signed[WIDTH_X-1:0] x19_reg;
	reg signed[WIDTH_X-1:0] x20_reg;
	reg signed[WIDTH_X-1:0] x21_reg;
	reg signed[WIDTH_X-1:0] x22_reg;
	reg signed[WIDTH_X-1:0] x23_reg;
	reg signed[WIDTH_X-1:0] x24_reg;
	reg signed[WIDTH_X-1:0] x25_reg;
	reg signed[WIDTH_X-1:0] x26_reg;
	reg signed[WIDTH_X-1:0] x27_reg;
	reg signed[WIDTH_X-1:0] x28_reg;
	reg signed[WIDTH_X-1:0] x29_reg;
	reg signed[WIDTH_X-1:0] x30_reg;
	reg signed[WIDTH_X-1:0] x31_reg;
	
	reg signed [WIDTH_Y-1:0] z0_reg;
	reg signed [WIDTH_Y-1:0] z1_reg;
	reg signed [WIDTH_Y-1:0] z2_reg;
	reg signed [WIDTH_Y-1:0] z3_reg;
	reg signed [WIDTH_Y-1:0] z4_reg;
	reg signed [WIDTH_Y-1:0] z5_reg;
	reg signed [WIDTH_Y-1:0] z6_reg;
	reg signed [WIDTH_Y-1:0] z7_reg;
	reg signed [WIDTH_Y-1:0] z8_reg;
	reg signed [WIDTH_Y-1:0] z9_reg;
	reg signed [WIDTH_Y-1:0] z10_reg;
	reg signed [WIDTH_Y-1:0] z11_reg;
	reg signed [WIDTH_Y-1:0] z12_reg;
	reg signed [WIDTH_Y-1:0] z13_reg;
	reg signed [WIDTH_Y-1:0] z14_reg;
	reg signed [WIDTH_Y-1:0] z15_reg;
	reg signed [WIDTH_Y-1:0] z16_reg;
	reg signed [WIDTH_Y-1:0] z17_reg;
	reg signed [WIDTH_Y-1:0] z18_reg;
	reg signed [WIDTH_Y-1:0] z19_reg;
	reg signed [WIDTH_Y-1:0] z20_reg;
	reg signed [WIDTH_Y-1:0] z21_reg;
	reg signed [WIDTH_Y-1:0] z22_reg;
	reg signed [WIDTH_Y-1:0] z23_reg;
	reg signed [WIDTH_Y-1:0] z24_reg;
	reg signed [WIDTH_Y-1:0] z25_reg;
	reg signed [WIDTH_Y-1:0] z26_reg;
	reg signed [WIDTH_Y-1:0] z27_reg;
	reg signed [WIDTH_Y-1:0] z28_reg;
	reg signed [WIDTH_Y-1:0] z29_reg;
	reg signed [WIDTH_Y-1:0] z30_reg;
	reg signed [WIDTH_Y-1:0] z31_reg;
	
	wire signed [WIDTH_Y-1:0] z0_next;
	wire signed [WIDTH_Y-1:0] z1_next;
	wire signed [WIDTH_Y-1:0] z2_next;
	wire signed [WIDTH_Y-1:0] z3_next;
	wire signed [WIDTH_Y-1:0] z4_next;
	wire signed [WIDTH_Y-1:0] z5_next;
	wire signed [WIDTH_Y-1:0] z6_next;
	wire signed [WIDTH_Y-1:0] z7_next;
	wire signed [WIDTH_Y-1:0] z8_next;
	wire signed [WIDTH_Y-1:0] z9_next;
	wire signed [WIDTH_Y-1:0] z10_next;
	wire signed [WIDTH_Y-1:0] z11_next;
	wire signed [WIDTH_Y-1:0] z12_next;
	wire signed [WIDTH_Y-1:0] z13_next;
	wire signed [WIDTH_Y-1:0] z14_next;
	wire signed [WIDTH_Y-1:0] z15_next;
	wire signed [WIDTH_Y-1:0] z16_next;
	wire signed [WIDTH_Y-1:0] z17_next;
	wire signed [WIDTH_Y-1:0] z18_next;
	wire signed [WIDTH_Y-1:0] z19_next;
	wire signed [WIDTH_Y-1:0] z20_next;
	wire signed [WIDTH_Y-1:0] z21_next;
	wire signed [WIDTH_Y-1:0] z22_next;
	wire signed [WIDTH_Y-1:0] z23_next;
	wire signed [WIDTH_Y-1:0] z24_next;
	wire signed [WIDTH_Y-1:0] z25_next;
	wire signed [WIDTH_Y-1:0] z26_next;
	wire signed [WIDTH_Y-1:0] z27_next;
	wire signed [WIDTH_Y-1:0] z28_next;
	wire signed [WIDTH_Y-1:0] z29_next;
	wire signed [WIDTH_Y-1:0] z30_next;
	wire signed [WIDTH_Y-1:0] z31_next;

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
				
				z0_reg <= 0;
				z1_reg <= 0;
				z2_reg <= 0;
				z3_reg <= 0;
				z4_reg <= 0;
				z5_reg <= 0;
				z6_reg <= 0;
				z7_reg <= 0;
				z8_reg <= 0;
				z9_reg <= 0;
				z10_reg <= 0;
				z11_reg <= 0;
				z12_reg <= 0;
				z13_reg <= 0;
				z14_reg <= 0;
				z15_reg <= 0;
				z16_reg <= 0;
				z17_reg <= 0;
				z18_reg <= 0;
				z19_reg <= 0;
				z20_reg <= 0;
				z21_reg <= 0;
				z22_reg <= 0;
				z23_reg <= 0;
				z24_reg <= 0;
				z25_reg <= 0;
				z26_reg <= 0;
				z27_reg <= 0;
				z28_reg <= 0;
				z29_reg <= 0;
				z30_reg <= 0;
				z31_reg <= 0;
				
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
				
				z0_reg <= z0_next;
				z1_reg <= z1_next;
				z2_reg <= z2_next;
				z3_reg <= z3_next;
				z4_reg <= z4_next;
				z5_reg <= z5_next;
				z6_reg <= z6_next;
				z7_reg <= z7_next;
				z8_reg <= z8_next;
				z9_reg <= z9_next;
				z10_reg <= z10_next;
				z11_reg <= z11_next;
				z12_reg <= z12_next;
				z13_reg <= z13_next;
				z14_reg <= z14_next;
				z15_reg <= z15_next;
				z16_reg <= z16_next;
				z17_reg <= z17_next;
				z18_reg <= z18_next;
				z19_reg <= z19_next;
				z20_reg <= z20_next;
				z21_reg <= z21_next;
				z22_reg <= z22_next;
				z23_reg <= z23_next;
				z24_reg <= z24_next;
				z25_reg <= z25_next;
				z26_reg <= z26_next;
				z27_reg <= z27_next;
				z28_reg <= z28_next;
				z29_reg <= z29_next;
				z30_reg <= z30_next;
				z31_reg <= z31_next;
			
		end
	end
	
	
	idct16
	#(
		.WIDTH_X (WIDTH_X),
		.WIDTH_Y (WIDTH_Y)
	)
	idct16_1
	(
		.clk      ( clk  ),
		.rst      ( rst  ),
		.load     ( load ),
		.x0 ( x0_reg ),
		.x1 ( x2_reg ),
		.x2 ( x4_reg ),
		.x3 ( x6_reg ),
		.x4 ( x8_reg ),
		.x5 ( x10_reg ),
		.x6 ( x12_reg ),
		.x7 ( x14_reg ),
		.x8 ( x16_reg ),
		.x9 ( x18_reg ),
		.x10 ( x20_reg ),
		.x11 ( x22_reg ),
		.x12 ( x24_reg ),
		.x13 ( x26_reg ),
		.x14 ( x28_reg ),
		.x15 ( x30_reg ),
		.y0 ( z0_next ), 
		.y1 ( z1_next ), 
		.y2 ( z2_next ), 
		.y3 ( z3_next ),
		.y4 ( z4_next ), 
		.y5 ( z5_next ), 
		.y6 ( z6_next ), 
		.y7 ( z7_next ),
		.y8 ( z8_next ), 
		.y9 ( z9_next ), 
		.y10 ( z10_next ), 
		.y11 ( z11_next ),
		.y12 ( z12_next ), 
		.y13 ( z13_next ), 
		.y14 ( z14_next ), 
		.y15 ( z15_next )
	);
	

assign z16_next = -{x1_reg,2'b00}+x3_reg+{x3_reg,2'b00}+{x3_reg,3'b000}-{x5_reg,1'b0}-{x5_reg,2'b00}-{x5_reg,4'b0000}+x7_reg+{x7_reg,1'b0}+{x7_reg,2'b00}+{x7_reg,3'b000}+{x7_reg,4'b0000}-{x9_reg,1'b0}-{x9_reg,2'b00}-{x9_reg,5'b00000}+{x11_reg,1'b0}+{x11_reg,2'b00}+{x11_reg,3'b000}+{x11_reg,5'b00000}-{x13_reg,1'b0}-{x13_reg,2'b00}-{x13_reg,4'b0000}-{x13_reg,5'b00000}+x15_reg+{x15_reg,2'b00}+{x15_reg,3'b000}+{x15_reg,4'b0000}+{x15_reg,5'b00000}-x17_reg-{x17_reg,1'b0}-{x17_reg,6'b000000}+x19_reg+{x19_reg,3'b000}+{x19_reg,6'b000000}-{x21_reg,1'b0}-{x21_reg,2'b00}-{x21_reg,3'b000}-{x21_reg,6'b000000}+{x23_reg,1'b0}+{x23_reg,4'b0000}+{x23_reg,6'b000000}-x25_reg-{x25_reg,2'b00}-{x25_reg,4'b0000}-{x25_reg,6'b000000}+{x27_reg,3'b000}+{x27_reg,4'b0000}+{x27_reg,6'b000000}-{x29_reg,1'b0}-{x29_reg,3'b000}-{x29_reg,4'b0000}-{x29_reg,6'b000000}+{x31_reg,1'b0}+{x31_reg,3'b000}+{x31_reg,4'b0000}+{x31_reg,6'b000000};

assign z17_next = -x1_reg-{x1_reg,2'b00}-{x1_reg,3'b000}+{x3_reg,1'b0}+{x3_reg,2'b00}+{x3_reg,5'b00000}-x5_reg-{x5_reg,2'b00}-{x5_reg,3'b000}-{x5_reg,4'b0000}-{x5_reg,5'b00000}+{x7_reg,1'b0}+{x7_reg,2'b00}+{x7_reg,3'b000}+{x7_reg,6'b000000}-{x9_reg,3'b000}-{x9_reg,4'b0000}-{x9_reg,6'b000000}+{x11_reg,1'b0}+{x11_reg,3'b000}+{x11_reg,4'b0000}+{x11_reg,6'b000000}-x13_reg-{x13_reg,2'b00}-{x13_reg,4'b0000}-{x13_reg,6'b000000}+x15_reg+{x15_reg,3'b000}+{x15_reg,6'b000000}-{x17_reg,1'b0}-{x17_reg,2'b00}-{x17_reg,4'b0000}-{x17_reg,5'b00000}+x19_reg+{x19_reg,1'b0}+{x19_reg,2'b00}+{x19_reg,3'b000}+{x19_reg,4'b0000}-{x21_reg,2'b00}-{x23_reg,1'b0}-{x23_reg,2'b00}-{x23_reg,4'b0000}+{x25_reg,1'b0}+{x25_reg,2'b00}+{x25_reg,3'b000}+{x25_reg,5'b00000}-x27_reg-{x27_reg,1'b0}-{x27_reg,6'b000000}+{x29_reg,1'b0}+{x29_reg,4'b0000}+{x29_reg,6'b000000}-{x31_reg,1'b0}-{x31_reg,3'b000}-{x31_reg,4'b0000}-{x31_reg,6'b000000};

assign z18_next = -{x1_reg,1'b0}-{x1_reg,2'b00}-{x1_reg,4'b0000}+x3_reg+{x3_reg,2'b00}+{x3_reg,3'b000}+{x3_reg,4'b0000}+{x3_reg,5'b00000}-x5_reg-{x5_reg,2'b00}-{x5_reg,4'b0000}-{x5_reg,6'b000000}+{x7_reg,1'b0}+{x7_reg,3'b000}+{x7_reg,4'b0000}+{x7_reg,6'b000000}-x9_reg-{x9_reg,3'b000}-{x9_reg,6'b000000}+{x11_reg,1'b0}+{x11_reg,2'b00}+{x11_reg,5'b00000}+{x13_reg,2'b00}-{x15_reg,1'b0}-{x15_reg,2'b00}-{x15_reg,3'b000}-{x15_reg,5'b00000}+{x17_reg,1'b0}+{x17_reg,2'b00}+{x17_reg,3'b000}+{x17_reg,6'b000000}-{x19_reg,1'b0}-{x19_reg,3'b000}-{x19_reg,4'b0000}-{x19_reg,6'b000000}+{x21_reg,1'b0}+{x21_reg,4'b0000}+{x21_reg,6'b000000}-{x23_reg,1'b0}-{x23_reg,2'b00}-{x23_reg,4'b0000}-{x23_reg,5'b00000}+x25_reg+{x25_reg,2'b00}+{x25_reg,3'b000}+x27_reg+{x27_reg,1'b0}+{x27_reg,2'b00}+{x27_reg,3'b000}+{x27_reg,4'b0000}-x29_reg-{x29_reg,1'b0}-{x29_reg,6'b000000}+{x31_reg,3'b000}+{x31_reg,4'b0000}+{x31_reg,6'b000000};

assign z19_next = -x1_reg-{x1_reg,1'b0}-{x1_reg,2'b00}-{x1_reg,3'b000}-{x1_reg,4'b0000}+{x3_reg,1'b0}+{x3_reg,2'b00}+{x3_reg,3'b000}+{x3_reg,6'b000000}-{x5_reg,1'b0}-{x5_reg,3'b000}-{x5_reg,4'b0000}-{x5_reg,6'b000000}+x7_reg+{x7_reg,2'b00}+{x7_reg,3'b000}+{x7_reg,4'b0000}+{x7_reg,5'b00000}-{x9_reg,2'b00}-{x11_reg,1'b0}-{x11_reg,2'b00}-{x11_reg,4'b0000}-{x11_reg,5'b00000}+{x13_reg,3'b000}+{x13_reg,4'b0000}+{x13_reg,6'b000000}-{x15_reg,1'b0}-{x15_reg,4'b0000}-{x15_reg,6'b000000}+{x17_reg,1'b0}+{x17_reg,2'b00}+{x17_reg,5'b00000}+{x19_reg,1'b0}+{x19_reg,2'b00}+{x19_reg,4'b0000}-x21_reg-{x21_reg,3'b000}-{x21_reg,6'b000000}+{x23_reg,1'b0}+{x23_reg,3'b000}+{x23_reg,4'b0000}+{x23_reg,6'b000000}-x25_reg-{x25_reg,1'b0}-{x25_reg,6'b000000}+x27_reg+{x27_reg,2'b00}+{x27_reg,3'b000}+{x29_reg,1'b0}+{x29_reg,2'b00}+{x29_reg,3'b000}+{x29_reg,5'b00000}-x31_reg-{x31_reg,2'b00}-{x31_reg,4'b0000}-{x31_reg,6'b000000};

assign z20_next = -{x1_reg,1'b0}-{x1_reg,2'b00}-{x1_reg,5'b00000}+{x3_reg,3'b000}+{x3_reg,4'b0000}+{x3_reg,6'b000000}-x5_reg-{x5_reg,3'b000}-{x5_reg,6'b000000}+{x7_reg,2'b00}+x9_reg+{x9_reg,1'b0}+{x9_reg,6'b000000}-{x11_reg,1'b0}-{x11_reg,3'b000}-{x11_reg,4'b0000}-{x11_reg,6'b000000}+{x13_reg,1'b0}+{x13_reg,2'b00}+{x13_reg,3'b000}+{x13_reg,5'b00000}+x15_reg+{x15_reg,1'b0}+{x15_reg,2'b00}+{x15_reg,3'b000}+{x15_reg,4'b0000}-x17_reg-{x17_reg,2'b00}-{x17_reg,4'b0000}-{x17_reg,6'b000000}+{x19_reg,1'b0}+{x19_reg,2'b00}+{x19_reg,3'b000}+{x19_reg,6'b000000}-x21_reg-{x21_reg,2'b00}-{x21_reg,3'b000}-x23_reg-{x23_reg,2'b00}-{x23_reg,3'b000}-{x23_reg,4'b0000}-{x23_reg,5'b00000}+{x25_reg,1'b0}+{x25_reg,3'b000}+{x25_reg,4'b0000}+{x25_reg,6'b000000}-{x27_reg,1'b0}-{x27_reg,2'b00}-{x27_reg,4'b0000}-{x27_reg,5'b00000}-{x29_reg,1'b0}-{x29_reg,2'b00}-{x29_reg,4'b0000}+{x31_reg,1'b0}+{x31_reg,4'b0000}+{x31_reg,6'b000000};

assign z21_next = -{x1_reg,1'b0}-{x1_reg,2'b00}-{x1_reg,3'b000}-{x1_reg,5'b00000}+{x3_reg,1'b0}+{x3_reg,3'b000}+{x3_reg,4'b0000}+{x3_reg,6'b000000}-{x5_reg,1'b0}-{x5_reg,2'b00}-{x5_reg,5'b00000}-{x7_reg,1'b0}-{x7_reg,2'b00}-{x7_reg,4'b0000}-{x7_reg,5'b00000}+{x9_reg,1'b0}+{x9_reg,3'b000}+{x9_reg,4'b0000}+{x9_reg,6'b000000}-x11_reg-{x11_reg,1'b0}-{x11_reg,2'b00}-{x11_reg,3'b000}-{x11_reg,4'b0000}-x13_reg-{x13_reg,2'b00}-{x13_reg,3'b000}-{x13_reg,4'b0000}-{x13_reg,5'b00000}+{x15_reg,3'b000}+{x15_reg,4'b0000}+{x15_reg,6'b000000}-{x17_reg,1'b0}-{x17_reg,2'b00}-{x17_reg,4'b0000}-x19_reg-{x19_reg,1'b0}-{x19_reg,6'b000000}+x21_reg+{x21_reg,2'b00}+{x21_reg,4'b0000}+{x21_reg,6'b000000}-x23_reg-{x23_reg,2'b00}-{x23_reg,3'b000}-x25_reg-{x25_reg,3'b000}-{x25_reg,6'b000000}+{x27_reg,1'b0}+{x27_reg,4'b0000}+{x27_reg,6'b000000}-{x29_reg,2'b00}-{x31_reg,1'b0}-{x31_reg,2'b00}-{x31_reg,3'b000}-{x31_reg,6'b000000};

assign z22_next = -{x1_reg,1'b0}-{x1_reg,2'b00}-{x1_reg,4'b0000}-{x1_reg,5'b00000}+x3_reg+{x3_reg,2'b00}+{x3_reg,4'b0000}+{x3_reg,6'b000000}+{x5_reg,2'b00}-{x7_reg,3'b000}-{x7_reg,4'b0000}-{x7_reg,6'b000000}+{x9_reg,1'b0}+{x9_reg,2'b00}+{x9_reg,3'b000}+{x9_reg,5'b00000}+x11_reg+{x11_reg,2'b00}+{x11_reg,3'b000}+{x11_reg,4'b0000}+{x11_reg,5'b00000}-{x13_reg,1'b0}-{x13_reg,4'b0000}-{x13_reg,6'b000000}-x15_reg-{x15_reg,2'b00}-{x15_reg,3'b000}+{x17_reg,1'b0}+{x17_reg,3'b000}+{x17_reg,4'b0000}+{x17_reg,6'b000000}-{x19_reg,1'b0}-{x19_reg,2'b00}-{x19_reg,5'b00000}-x21_reg-{x21_reg,1'b0}-{x21_reg,6'b000000}+{x23_reg,1'b0}+{x23_reg,2'b00}+{x23_reg,3'b000}+{x23_reg,6'b000000}+{x25_reg,1'b0}+{x25_reg,2'b00}+{x25_reg,4'b0000}-{x27_reg,1'b0}-{x27_reg,3'b000}-{x27_reg,4'b0000}-{x27_reg,6'b000000}+x29_reg+{x29_reg,1'b0}+{x29_reg,2'b00}+{x29_reg,3'b000}+{x29_reg,4'b0000}+x31_reg+{x31_reg,3'b000}+{x31_reg,6'b000000};

assign z23_next = -x1_reg-{x1_reg,2'b00}-{x1_reg,3'b000}-{x1_reg,4'b0000}-{x1_reg,5'b00000}+x3_reg+{x3_reg,3'b000}+{x3_reg,6'b000000}+{x5_reg,1'b0}+{x5_reg,2'b00}+{x5_reg,3'b000}+{x5_reg,5'b00000}-{x7_reg,1'b0}-{x7_reg,4'b0000}-{x7_reg,6'b000000}-x9_reg-{x9_reg,1'b0}-{x9_reg,2'b00}-{x9_reg,3'b000}-{x9_reg,4'b0000}+{x11_reg,3'b000}+{x11_reg,4'b0000}+{x11_reg,6'b000000}+x13_reg+{x13_reg,2'b00}+{x13_reg,3'b000}-{x15_reg,1'b0}-{x15_reg,3'b000}-{x15_reg,4'b0000}-{x15_reg,6'b000000}+{x17_reg,2'b00}+{x19_reg,1'b0}+{x19_reg,3'b000}+{x19_reg,4'b0000}+{x19_reg,6'b000000}-{x21_reg,1'b0}-{x21_reg,2'b00}-{x21_reg,4'b0000}-x23_reg-{x23_reg,2'b00}-{x23_reg,4'b0000}-{x23_reg,6'b000000}+{x25_reg,1'b0}+{x25_reg,2'b00}+{x25_reg,5'b00000}+{x27_reg,1'b0}+{x27_reg,2'b00}+{x27_reg,3'b000}+{x27_reg,6'b000000}-{x29_reg,1'b0}-{x29_reg,2'b00}-{x29_reg,4'b0000}-{x29_reg,5'b00000}-x31_reg-{x31_reg,1'b0}-{x31_reg,6'b000000};

assign z24_next = -x1_reg-{x1_reg,1'b0}-{x1_reg,6'b000000}+{x3_reg,1'b0}+{x3_reg,2'b00}+{x3_reg,4'b0000}+{x3_reg,5'b00000}+{x5_reg,1'b0}+{x5_reg,2'b00}+{x5_reg,3'b000}+{x5_reg,6'b000000}-{x7_reg,1'b0}-{x7_reg,2'b00}-{x7_reg,5'b00000}-x9_reg-{x9_reg,2'b00}-{x9_reg,4'b0000}-{x9_reg,6'b000000}+{x11_reg,1'b0}+{x11_reg,2'b00}+{x11_reg,4'b0000}+{x13_reg,1'b0}+{x13_reg,3'b000}+{x13_reg,4'b0000}+{x13_reg,6'b000000}-{x15_reg,2'b00}-{x17_reg,1'b0}-{x17_reg,3'b000}-{x17_reg,4'b0000}-{x17_reg,6'b000000}-x19_reg-{x19_reg,2'b00}-{x19_reg,3'b000}+{x21_reg,3'b000}+{x21_reg,4'b0000}+{x21_reg,6'b000000}+x23_reg+{x23_reg,1'b0}+{x23_reg,2'b00}+{x23_reg,3'b000}+{x23_reg,4'b0000}-{x25_reg,1'b0}-{x25_reg,4'b0000}-{x25_reg,6'b000000}-{x27_reg,1'b0}-{x27_reg,2'b00}-{x27_reg,3'b000}-{x27_reg,5'b00000}+x29_reg+{x29_reg,3'b000}+{x29_reg,6'b000000}+x31_reg+{x31_reg,2'b00}+{x31_reg,3'b000}+{x31_reg,4'b0000}+{x31_reg,5'b00000};

assign z25_next = -x1_reg-{x1_reg,3'b000}-{x1_reg,6'b000000}+x3_reg+{x3_reg,1'b0}+{x3_reg,2'b00}+{x3_reg,3'b000}+{x3_reg,4'b0000}+{x5_reg,1'b0}+{x5_reg,3'b000}+{x5_reg,4'b0000}+{x5_reg,6'b000000}+{x7_reg,1'b0}+{x7_reg,2'b00}+{x7_reg,4'b0000}-{x9_reg,1'b0}-{x9_reg,2'b00}-{x9_reg,3'b000}-{x9_reg,6'b000000}-x11_reg-{x11_reg,1'b0}-{x11_reg,6'b000000}+{x13_reg,1'b0}+{x13_reg,2'b00}+{x13_reg,5'b00000}+{x15_reg,1'b0}+{x15_reg,3'b000}+{x15_reg,4'b0000}+{x15_reg,6'b000000}+x17_reg+{x17_reg,2'b00}+{x17_reg,3'b000}-{x19_reg,1'b0}-{x19_reg,4'b0000}-{x19_reg,6'b000000}-x21_reg-{x21_reg,2'b00}-{x21_reg,3'b000}-{x21_reg,4'b0000}-{x21_reg,5'b00000}+{x23_reg,1'b0}+{x23_reg,2'b00}+{x23_reg,3'b000}+{x23_reg,5'b00000}+{x25_reg,3'b000}+{x25_reg,4'b0000}+{x25_reg,6'b000000}+{x27_reg,2'b00}-x29_reg-{x29_reg,2'b00}-{x29_reg,4'b0000}-{x29_reg,6'b000000}-{x31_reg,1'b0}-{x31_reg,2'b00}-{x31_reg,4'b0000}-{x31_reg,5'b00000};

assign z26_next = -{x1_reg,1'b0}-{x1_reg,2'b00}-{x1_reg,3'b000}-{x1_reg,6'b000000}+{x3_reg,2'b00}+{x5_reg,1'b0}+{x5_reg,4'b0000}+{x5_reg,6'b000000}+x7_reg+{x7_reg,3'b000}+{x7_reg,6'b000000}-x9_reg-{x9_reg,2'b00}-{x9_reg,3'b000}-x11_reg-{x11_reg,2'b00}-{x11_reg,4'b0000}-{x11_reg,6'b000000}-x13_reg-{x13_reg,1'b0}-{x13_reg,6'b000000}+{x15_reg,1'b0}+{x15_reg,2'b00}+{x15_reg,4'b0000}+{x17_reg,3'b000}+{x17_reg,4'b0000}+{x17_reg,6'b000000}+x19_reg+{x19_reg,2'b00}+{x19_reg,3'b000}+{x19_reg,4'b0000}+{x19_reg,5'b00000}-x21_reg-{x21_reg,1'b0}-{x21_reg,2'b00}-{x21_reg,3'b000}-{x21_reg,4'b0000}-{x23_reg,1'b0}-{x23_reg,3'b000}-{x23_reg,4'b0000}-{x23_reg,6'b000000}-{x25_reg,1'b0}-{x25_reg,2'b00}-{x25_reg,4'b0000}-{x25_reg,5'b00000}+{x27_reg,1'b0}+{x27_reg,2'b00}+{x27_reg,5'b00000}+{x29_reg,1'b0}+{x29_reg,3'b000}+{x29_reg,4'b0000}+{x29_reg,6'b000000}+{x31_reg,1'b0}+{x31_reg,2'b00}+{x31_reg,3'b000}+{x31_reg,5'b00000};

assign z27_next = -{x1_reg,1'b0}-{x1_reg,4'b0000}-{x1_reg,6'b000000}-{x3_reg,1'b0}-{x3_reg,2'b00}-{x3_reg,4'b0000}+{x5_reg,1'b0}+{x5_reg,2'b00}+{x5_reg,4'b0000}+{x5_reg,5'b00000}+{x7_reg,1'b0}+{x7_reg,3'b000}+{x7_reg,4'b0000}+{x7_reg,6'b000000}+x9_reg+{x9_reg,2'b00}+{x9_reg,3'b000}+{x9_reg,4'b0000}+{x9_reg,5'b00000}-x11_reg-{x11_reg,2'b00}-{x11_reg,3'b000}-{x13_reg,1'b0}-{x13_reg,2'b00}-{x13_reg,3'b000}-{x13_reg,6'b000000}-x15_reg-{x15_reg,2'b00}-{x15_reg,4'b0000}-{x15_reg,6'b000000}-x17_reg-{x17_reg,1'b0}-{x17_reg,2'b00}-{x17_reg,3'b000}-{x17_reg,4'b0000}+{x19_reg,1'b0}+{x19_reg,2'b00}+{x19_reg,3'b000}+{x19_reg,5'b00000}+{x21_reg,1'b0}+{x21_reg,3'b000}+{x21_reg,4'b0000}+{x21_reg,6'b000000}+x23_reg+{x23_reg,1'b0}+{x23_reg,6'b000000}-{x25_reg,2'b00}-x27_reg-{x27_reg,3'b000}-{x27_reg,6'b000000}-{x29_reg,3'b000}-{x29_reg,4'b0000}-{x29_reg,6'b000000}-{x31_reg,1'b0}-{x31_reg,2'b00}-{x31_reg,5'b00000};

assign z28_next = -x1_reg-{x1_reg,2'b00}-{x1_reg,4'b0000}-{x1_reg,6'b000000}-{x3_reg,1'b0}-{x3_reg,2'b00}-{x3_reg,3'b000}-{x3_reg,5'b00000}+x5_reg+{x5_reg,2'b00}+{x5_reg,3'b000}+x7_reg+{x7_reg,1'b0}+{x7_reg,6'b000000}+{x9_reg,1'b0}+{x9_reg,3'b000}+{x9_reg,4'b0000}+{x9_reg,6'b000000}+x11_reg+{x11_reg,3'b000}+{x11_reg,6'b000000}+{x13_reg,1'b0}+{x13_reg,2'b00}+{x13_reg,4'b0000}-{x15_reg,1'b0}-{x15_reg,2'b00}-{x15_reg,5'b00000}-{x17_reg,1'b0}-{x17_reg,4'b0000}-{x17_reg,6'b000000}-{x19_reg,3'b000}-{x19_reg,4'b0000}-{x19_reg,6'b000000}-{x21_reg,1'b0}-{x21_reg,2'b00}-{x21_reg,4'b0000}-{x21_reg,5'b00000}+{x23_reg,2'b00}+x25_reg+{x25_reg,2'b00}+{x25_reg,3'b000}+{x25_reg,4'b0000}+{x25_reg,5'b00000}+{x27_reg,1'b0}+{x27_reg,3'b000}+{x27_reg,4'b0000}+{x27_reg,6'b000000}+{x29_reg,1'b0}+{x29_reg,2'b00}+{x29_reg,3'b000}+{x29_reg,6'b000000}+x31_reg+{x31_reg,1'b0}+{x31_reg,2'b00}+{x31_reg,3'b000}+{x31_reg,4'b0000};

assign z29_next = -{x1_reg,3'b000}-{x1_reg,4'b0000}-{x1_reg,6'b000000}-x3_reg-{x3_reg,1'b0}-{x3_reg,6'b000000}-x5_reg-{x5_reg,1'b0}-{x5_reg,2'b00}-{x5_reg,3'b000}-{x5_reg,4'b0000}+x7_reg+{x7_reg,2'b00}+{x7_reg,3'b000}+{x9_reg,1'b0}+{x9_reg,2'b00}+{x9_reg,4'b0000}+{x9_reg,5'b00000}+{x11_reg,1'b0}+{x11_reg,4'b0000}+{x11_reg,6'b000000}+{x13_reg,1'b0}+{x13_reg,3'b000}+{x13_reg,4'b0000}+{x13_reg,6'b000000}+{x15_reg,1'b0}+{x15_reg,2'b00}+{x15_reg,3'b000}+{x15_reg,6'b000000}+{x17_reg,1'b0}+{x17_reg,2'b00}+{x17_reg,3'b000}+{x17_reg,5'b00000}+{x19_reg,2'b00}-{x21_reg,1'b0}-{x21_reg,2'b00}-{x21_reg,5'b00000}-x23_reg-{x23_reg,3'b000}-{x23_reg,6'b000000}-{x25_reg,1'b0}-{x25_reg,3'b000}-{x25_reg,4'b0000}-{x25_reg,6'b000000}-x27_reg-{x27_reg,2'b00}-{x27_reg,4'b0000}-{x27_reg,6'b000000}-x29_reg-{x29_reg,2'b00}-{x29_reg,3'b000}-{x29_reg,4'b0000}-{x29_reg,5'b00000}-{x31_reg,1'b0}-{x31_reg,2'b00}-{x31_reg,4'b0000};

assign z30_next = -{x1_reg,1'b0}-{x1_reg,3'b000}-{x1_reg,4'b0000}-{x1_reg,6'b000000}-{x3_reg,1'b0}-{x3_reg,4'b0000}-{x3_reg,6'b000000}-x5_reg-{x5_reg,1'b0}-{x5_reg,6'b000000}-{x7_reg,1'b0}-{x7_reg,2'b00}-{x7_reg,3'b000}-{x7_reg,5'b00000}-{x9_reg,1'b0}-{x9_reg,2'b00}-{x9_reg,4'b0000}+{x11_reg,2'b00}+x13_reg+{x13_reg,1'b0}+{x13_reg,2'b00}+{x13_reg,3'b000}+{x13_reg,4'b0000}+{x15_reg,1'b0}+{x15_reg,2'b00}+{x15_reg,4'b0000}+{x15_reg,5'b00000}+x17_reg+{x17_reg,3'b000}+{x17_reg,6'b000000}+x19_reg+{x19_reg,2'b00}+{x19_reg,4'b0000}+{x19_reg,6'b000000}+{x21_reg,1'b0}+{x21_reg,3'b000}+{x21_reg,4'b0000}+{x21_reg,6'b000000}+{x23_reg,3'b000}+{x23_reg,4'b0000}+{x23_reg,6'b000000}+{x25_reg,1'b0}+{x25_reg,2'b00}+{x25_reg,3'b000}+{x25_reg,6'b000000}+x27_reg+{x27_reg,2'b00}+{x27_reg,3'b000}+{x27_reg,4'b0000}+{x27_reg,5'b00000}+{x29_reg,1'b0}+{x29_reg,2'b00}+{x29_reg,5'b00000}+x31_reg+{x31_reg,2'b00}+{x31_reg,3'b000};

assign z31_next = -{x1_reg,1'b0}-{x1_reg,3'b000}-{x1_reg,4'b0000}-{x1_reg,6'b000000}-{x3_reg,1'b0}-{x3_reg,3'b000}-{x3_reg,4'b0000}-{x3_reg,6'b000000}-{x5_reg,3'b000}-{x5_reg,4'b0000}-{x5_reg,6'b000000}-x7_reg-{x7_reg,2'b00}-{x7_reg,4'b0000}-{x7_reg,6'b000000}-{x9_reg,1'b0}-{x9_reg,4'b0000}-{x9_reg,6'b000000}-{x11_reg,1'b0}-{x11_reg,2'b00}-{x11_reg,3'b000}-{x11_reg,6'b000000}-x13_reg-{x13_reg,3'b000}-{x13_reg,6'b000000}-x15_reg-{x15_reg,1'b0}-{x15_reg,6'b000000}-x17_reg-{x17_reg,2'b00}-{x17_reg,3'b000}-{x17_reg,4'b0000}-{x17_reg,5'b00000}-{x19_reg,1'b0}-{x19_reg,2'b00}-{x19_reg,4'b0000}-{x19_reg,5'b00000}-{x21_reg,1'b0}-{x21_reg,2'b00}-{x21_reg,3'b000}-{x21_reg,5'b00000}-{x23_reg,1'b0}-{x23_reg,2'b00}-{x23_reg,5'b00000}-x25_reg-{x25_reg,1'b0}-{x25_reg,2'b00}-{x25_reg,3'b000}-{x25_reg,4'b0000}-{x27_reg,1'b0}-{x27_reg,2'b00}-{x27_reg,4'b0000}-x29_reg-{x29_reg,2'b00}-{x29_reg,3'b000}-{x31_reg,2'b00};

assign y0 = z0_reg - z31_reg;
assign y1 = z1_reg - z30_reg;
assign y2 = z2_reg - z29_reg;
assign y3 = z3_reg - z28_reg;
assign y4 = z4_reg - z27_reg;
assign y5 = z5_reg - z26_reg;
assign y6 = z6_reg - z25_reg;
assign y7 = z7_reg - z24_reg;
assign y8 = z8_reg - z23_reg;
assign y9 = z9_reg - z22_reg;
assign y10 = z10_reg - z21_reg;
assign y11 = z11_reg - z20_reg;
assign y12 = z12_reg - z19_reg;
assign y13 = z13_reg - z18_reg;
assign y14 = z14_reg - z17_reg;
assign y15 = z15_reg - z16_reg;
assign y16 = z15_reg + z16_reg;
assign y17 = z14_reg + z17_reg;
assign y18 = z13_reg + z18_reg;
assign y19 = z12_reg + z19_reg;
assign y20 = z11_reg + z20_reg;
assign y21 = z10_reg + z21_reg;
assign y22 = z9_reg + z22_reg;
assign y23 = z8_reg + z23_reg; 
assign y24 = z7_reg + z24_reg;
assign y25 = z6_reg + z25_reg;
assign y26 = z5_reg + z26_reg;
assign y27 = z4_reg + z27_reg;
assign y28 = z3_reg + z28_reg;
assign y29 = z2_reg + z29_reg;
assign y30 = z1_reg + z30_reg;
assign y31 = z0_reg + z31_reg; 

endmodule
	

