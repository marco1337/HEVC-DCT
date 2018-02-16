module idct16 
#(
	parameter WIDTH_X = 16,
	parameter WIDTH_Y = 22
)
(
	input wire signed[WIDTH_X-1:0] x0,
	input wire signed[WIDTH_X-1:0] x1,
	input wire signed[WIDTH_X-1:0] x2,
	input wire signed[WIDTH_X-1:0] x3,
	input wire signed[WIDTH_X-1:0] x4,
	input wire signed[WIDTH_X-1:0] x5,
	input wire signed[WIDTH_X-1:0] x6,
	input wire signed[WIDTH_X-1:0] x7,
	input wire signed[WIDTH_X-1:0] x8,
	input wire signed[WIDTH_X-1:0] x9,
	input wire signed[WIDTH_X-1:0] x10,
	input wire signed[WIDTH_X-1:0] x11,
	input wire signed[WIDTH_X-1:0] x12,
	input wire signed[WIDTH_X-1:0] x13,
	input wire signed[WIDTH_X-1:0] x14,
	input wire signed[WIDTH_X-1:0] x15,
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
	output wire signed [WIDTH_Y-1:0] y15
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
			
		end
	end
	
	idct8
	#(
		.WIDTH_X (WIDTH_X),
		.WIDTH_Y (WIDTH_Y)
	)
	idct8_1
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
		.y0 ( z0_next ), 
		.y1 ( z1_next ), 
		.y2 ( z2_next ), 
		.y3 ( z3_next ),
		.y4 ( z4_next ), 
		.y5 ( z5_next ), 
		.y6 ( z6_next ), 
		.y7 ( z7_next )
	);
	

assign z8_next = -x1_reg-{x1_reg,3'b000}+x3_reg+{x3_reg,3'b000}+{x3_reg,4'b0000}-x5_reg-{x5_reg,1'b0}-{x5_reg,3'b000}-{x5_reg,5'b00000}+x7_reg+{x7_reg,3'b000}+{x7_reg,4'b0000}+{x7_reg,5'b00000}-{x9_reg,1'b0}-{x9_reg,2'b00}-{x9_reg,6'b000000}+{x11_reg,4'b0000}+{x11_reg,6'b000000}-x13_reg-{x13_reg,1'b0}-{x13_reg,2'b00}-{x13_reg,4'b0000}-{x13_reg,6'b000000}+x15_reg+{x15_reg,1'b0}+{x15_reg,6'b000000};

assign z9_next = -x1_reg-{x1_reg,3'b000}-{x1_reg,4'b0000}+{x3_reg,1'b0}+{x3_reg,2'b00}+{x3_reg,6'b000000}-{x5_reg,1'b0}-{x5_reg,3'b000}-{x5_reg,4'b0000}-{x5_reg,6'b000000}+{x7_reg,4'b0000}+{x7_reg,6'b000000}-x9_reg-{x9_reg,1'b0}-{x9_reg,3'b000}-{x9_reg,5'b00000}-x11_reg-{x11_reg,3'b000}+x13_reg+{x13_reg,3'b000}+{x13_reg,4'b0000}+{x13_reg,5'b00000}-x15_reg-{x15_reg,3'b000}-{x15_reg,6'b000000};

assign z10_next = -x1_reg-{x1_reg,1'b0}-{x1_reg,3'b000}-{x1_reg,5'b00000}+{x3_reg,1'b0}+{x3_reg,3'b000}+{x3_reg,4'b0000}+{x3_reg,6'b000000}-x5_reg-{x5_reg,3'b000}-{x5_reg,4'b0000}-{x5_reg,5'b00000}-x7_reg-{x7_reg,3'b000}-{x7_reg,4'b0000}+x9_reg+{x9_reg,1'b0}+{x9_reg,2'b00}+{x9_reg,4'b0000}+{x9_reg,6'b000000}-{x11_reg,1'b0}-{x11_reg,2'b00}-{x11_reg,6'b000000}-x13_reg-{x13_reg,3'b000}+{x15_reg,1'b0}+{x15_reg,2'b00}+{x15_reg,3'b000}+{x15_reg,6'b000000};

assign z11_next = -x1_reg-{x1_reg,3'b000}-{x1_reg,4'b0000}-{x1_reg,5'b00000}+{x3_reg,4'b0000}+{x3_reg,6'b000000}+x5_reg+{x5_reg,3'b000}+{x5_reg,4'b0000}-{x7_reg,1'b0}-{x7_reg,3'b000}-{x7_reg,4'b0000}-{x7_reg,6'b000000}+x9_reg+{x9_reg,3'b000}+x11_reg+{x11_reg,1'b0}+{x11_reg,2'b00}+{x11_reg,4'b0000}+{x11_reg,6'b000000}-x13_reg-{x13_reg,1'b0}-{x13_reg,3'b000}-{x13_reg,5'b00000}-{x15_reg,1'b0}-{x15_reg,4'b0000}-{x15_reg,6'b000000};

assign z12_next = -{x1_reg,1'b0}-{x1_reg,2'b00}-{x1_reg,6'b000000}+x3_reg+{x3_reg,1'b0}+{x3_reg,3'b000}+{x3_reg,5'b00000}+x5_reg+{x5_reg,1'b0}+{x5_reg,2'b00}+{x5_reg,4'b0000}+{x5_reg,6'b000000}-x7_reg-{x7_reg,3'b000}-{x9_reg,1'b0}-{x9_reg,3'b000}-{x9_reg,4'b0000}-{x9_reg,6'b000000}-x11_reg-{x11_reg,3'b000}-{x11_reg,4'b0000}+{x13_reg,4'b0000}+{x13_reg,6'b000000}+x15_reg+{x15_reg,2'b00}+{x15_reg,4'b0000}+{x15_reg,6'b000000};

assign z13_next = -{x1_reg,4'b0000}-{x1_reg,6'b000000}-x3_reg-{x3_reg,3'b000}+{x5_reg,1'b0}+{x5_reg,2'b00}+{x5_reg,6'b000000}+x7_reg+{x7_reg,1'b0}+{x7_reg,2'b00}+{x7_reg,4'b0000}+{x7_reg,6'b000000}+x9_reg+{x9_reg,3'b000}+{x9_reg,4'b0000}-x11_reg-{x11_reg,3'b000}-{x11_reg,4'b0000}-{x11_reg,5'b00000}-{x13_reg,1'b0}-{x13_reg,3'b000}-{x13_reg,4'b0000}-{x13_reg,6'b000000}-{x15_reg,3'b000}-{x15_reg,4'b0000}-{x15_reg,6'b000000};

assign z14_next = -x1_reg-{x1_reg,1'b0}-{x1_reg,2'b00}-{x1_reg,4'b0000}-{x1_reg,6'b000000}-x3_reg-{x3_reg,3'b000}-{x3_reg,4'b0000}-{x3_reg,5'b00000}-x5_reg-{x5_reg,3'b000}+x7_reg+{x7_reg,1'b0}+{x7_reg,3'b000}+{x7_reg,5'b00000}+{x9_reg,4'b0000}+{x9_reg,6'b000000}+{x11_reg,1'b0}+{x11_reg,3'b000}+{x11_reg,4'b0000}+{x11_reg,6'b000000}+{x13_reg,1'b0}+{x13_reg,2'b00}+{x13_reg,6'b000000}+{x15_reg,1'b0}+{x15_reg,3'b000}+{x15_reg,4'b0000}+{x15_reg,6'b000000};

assign z15_next = -{x1_reg,1'b0}-{x1_reg,3'b000}-{x1_reg,4'b0000}-{x1_reg,6'b000000}-x3_reg-{x3_reg,1'b0}-{x3_reg,2'b00}-{x3_reg,4'b0000}-{x3_reg,6'b000000}-{x5_reg,4'b0000}-{x5_reg,6'b000000}-{x7_reg,1'b0}-{x7_reg,2'b00}-{x7_reg,6'b000000}-x9_reg-{x9_reg,3'b000}-{x9_reg,4'b0000}-{x9_reg,5'b00000}-x11_reg-{x11_reg,1'b0}-{x11_reg,3'b000}-{x11_reg,5'b00000}-x13_reg-{x13_reg,3'b000}-{x13_reg,4'b0000}-{x15_reg,1'b0}-{x15_reg,3'b000}-{x15_reg,4'b0000}-{x15_reg,6'b000000};
	

assign y0 = z0_reg - z15_reg;
assign y1 = z1_reg - z14_reg;
assign y2 = z2_reg - z13_reg;
assign y3 = z3_reg - z12_reg;
assign y4 = z4_reg - z11_reg;
assign y5 = z5_reg - z10_reg;
assign y6 = z6_reg - z9_reg;
assign y7 = z7_reg - z8_reg;
assign y8 = z7_reg + z8_reg;
assign y9 = z6_reg + z9_reg;
assign y10 = z5_reg + z10_reg;
assign y11 = z4_reg + z11_reg;
assign y12 = z3_reg + z12_reg;
assign y13 = z2_reg + z13_reg;
assign y14 = z1_reg + z14_reg;
assign y15 = z0_reg + z15_reg;

endmodule
	