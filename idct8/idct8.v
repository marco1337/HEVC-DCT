module idct8 
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
	
	input wire clk,rst,
	input wire load,
	
	output wire signed[WIDTH_Y-1:0] y0,
	output wire signed[WIDTH_Y-1:0] y1,
	output wire signed[WIDTH_Y-1:0] y2,
	output wire signed[WIDTH_Y-1:0] y3,
	output wire signed[WIDTH_Y-1:0] y4,
	output wire signed[WIDTH_Y-1:0] y5,
	output wire signed[WIDTH_Y-1:0] y6,
	output wire signed[WIDTH_Y-1:0] y7
);
	reg signed[WIDTH_X-1:0] x0_reg;
	reg signed[WIDTH_X-1:0] x1_reg;
	reg signed[WIDTH_X-1:0] x2_reg;
	reg signed[WIDTH_X-1:0] x3_reg;
	reg signed[WIDTH_X-1:0] x4_reg;
	reg signed[WIDTH_X-1:0] x5_reg;
	reg signed[WIDTH_X-1:0] x6_reg;
	reg signed[WIDTH_X-1:0] x7_reg;
	
	reg signed [WIDTH_Y-1:0] z0_reg;
	reg signed [WIDTH_Y-1:0] z1_reg;
	reg signed [WIDTH_Y-1:0] z2_reg;
	reg signed [WIDTH_Y-1:0] z3_reg;
	reg signed [WIDTH_Y-1:0] z4_reg;
	reg signed [WIDTH_Y-1:0] z5_reg;
	reg signed [WIDTH_Y-1:0] z6_reg;
	reg signed [WIDTH_Y-1:0] z7_reg;
	
	wire signed [WIDTH_Y-1:0] z0_next;
	wire signed [WIDTH_Y-1:0] z1_next;
	wire signed [WIDTH_Y-1:0] z2_next;
	wire signed [WIDTH_Y-1:0] z3_next;
	wire signed [WIDTH_Y-1:0] z4_next;
	wire signed [WIDTH_Y-1:0] z5_next;
	wire signed [WIDTH_Y-1:0] z6_next;
	wire signed [WIDTH_Y-1:0] z7_next;

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
				
				z0_reg <= 0;
				z1_reg <= 0;
				z2_reg <= 0;
				z3_reg <= 0;
				z4_reg <= 0;
				z5_reg <= 0;
				z6_reg <= 0;
				z7_reg <= 0;
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
			end
				z0_reg <= z0_next;
				z1_reg <= z1_next;
				z2_reg <= z2_next;
				z3_reg <= z3_next;
				z4_reg <= z4_next;
				z5_reg <= z5_next;
				z6_reg <= z6_next;
				z7_reg <= z7_next;
		end
	end
	
	idct4
	#(
		.WIDTH_X (WIDTH_X),
		.WIDTH_Y (WIDTH_Y)
	)
	idct4_1
	(
		.clk      ( clk  ),
		.rst      ( rst  ),
		.load     ( load ),
		.x0 ( x0_reg ),
		.x1 ( x2_reg ),
		.x2 ( x4_reg ),
		.x3 ( x6_reg ),
		.y0 ( z0_next ), 
		.y1 ( z1_next ), 
		.y2 ( z2_next ), 
		.y3 ( z3_next )
	);
	

	assign z4_next = -{x1_reg,1'b0}-{x1_reg,4'b0000}+{x3_reg,1'b0}+{x3_reg,4'b0000}+{x3_reg,5'b00000}-x5_reg-{x5_reg,1'b0}-{x5_reg,3'b000}-{x5_reg,6'b000000}+{x7_reg,3'b000}+{x7_reg,4'b0000}+{x7_reg,6'b000000};

	assign z5_next = -{x1_reg,1'b0}-{x1_reg,4'b0000}-{x1_reg,5'b00000}+x3_reg+{x3_reg,3'b000}+{x3_reg,4'b0000}+{x3_reg,6'b000000}-{x5_reg,1'b0}-{x5_reg,4'b0000}-{x7_reg,1'b0}-{x7_reg,3'b000}-{x7_reg,4'b0000}-{x7_reg,6'b000000};

	assign z6_next = -x1_reg-{x1_reg,1'b0}-{x1_reg,3'b000}-{x1_reg,6'b000000}+{x3_reg,1'b0}+{x3_reg,4'b0000}+x5_reg+{x5_reg,3'b000}+{x5_reg,4'b0000}+{x5_reg,6'b000000}+x7_reg+{x7_reg,2'b00}+{x7_reg,4'b0000}+{x7_reg,6'b000000};

	assign z7_next = -x1_reg-{x1_reg,3'b000}-{x1_reg,4'b0000}-{x1_reg,6'b000000}-x3_reg-{x3_reg,1'b0}-{x3_reg,3'b000}-{x3_reg,6'b000000}-{x5_reg,1'b0}-{x5_reg,4'b0000}-{x5_reg,5'b00000}-x7_reg-{x7_reg,3'b000}-{x7_reg,6'b000000};
	
	
	assign y0 = z0_reg - z7_reg;
	assign y1 = z1_reg - z6_reg;
	assign y2 = z2_reg - z5_reg;
	assign y3 = z3_reg - z4_reg;
	assign y4 = z3_reg + z4_reg;
	assign y5 = z2_reg + z5_reg;
	assign y6 = z1_reg + z6_reg;
	assign y7 = z0_reg + z7_reg;
	
endmodule
	