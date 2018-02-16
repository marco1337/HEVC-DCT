module dct16
#(
parameter	WIDTH_X = 9,
parameter	WIDTH_Y = 20
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
	//registros de entrada
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
	
	//registros intermedios a y b para calculo de dct
	reg signed[WIDTH_Y-1:0] a0_reg;
	reg signed[WIDTH_Y-1:0] a1_reg;
	reg signed[WIDTH_Y-1:0] a2_reg;
	reg signed[WIDTH_Y-1:0] a3_reg;
	reg signed[WIDTH_Y-1:0] a4_reg;
	reg signed[WIDTH_Y-1:0] a5_reg;
	reg signed[WIDTH_Y-1:0] a6_reg;
	reg signed[WIDTH_Y-1:0] a7_reg;
	reg signed[WIDTH_Y-1:0] b0_reg;
	reg signed[WIDTH_Y-1:0] b1_reg;
	reg signed[WIDTH_Y-1:0] b2_reg;
	reg signed[WIDTH_Y-1:0] b3_reg;
	reg signed[WIDTH_Y-1:0] b4_reg;
	reg signed[WIDTH_Y-1:0] b5_reg;
	reg signed[WIDTH_Y-1:0] b6_reg;
	reg signed[WIDTH_Y-1:0] b7_reg;
	
	wire signed[WIDTH_Y-1:0] a0_next;
	wire signed[WIDTH_Y-1:0] a1_next;
	wire signed[WIDTH_Y-1:0] a2_next;
	wire signed[WIDTH_Y-1:0] a3_next;
	wire signed[WIDTH_Y-1:0] a4_next;
	wire signed[WIDTH_Y-1:0] a5_next;
	wire signed[WIDTH_Y-1:0] a6_next;
	wire signed[WIDTH_Y-1:0] a7_next;
	wire signed[WIDTH_Y-1:0] b0_next;
	wire signed[WIDTH_Y-1:0] b1_next;
	wire signed[WIDTH_Y-1:0] b2_next;
	wire signed[WIDTH_Y-1:0] b3_next;
	wire signed[WIDTH_Y-1:0] b4_next;
	wire signed[WIDTH_Y-1:0] b5_next;
	wire signed[WIDTH_Y-1:0] b6_next;
	wire signed[WIDTH_Y-1:0] b7_next;
	
	wire signed[WIDTH_Y-1:0] y1_next;
	wire signed[WIDTH_Y-1:0] y3_next;
	wire signed[WIDTH_Y-1:0] y5_next;
	wire signed[WIDTH_Y-1:0] y7_next;
	wire signed[WIDTH_Y-1:0] y9_next;
	wire signed[WIDTH_Y-1:0] y11_next;
	wire signed[WIDTH_Y-1:0] y13_next;
	wire signed[WIDTH_Y-1:0] y15_next;
	
	dct8puntos
	#(
		.WIDTH_X	(WIDTH_X + 1),
		.WIDTH_Y (WIDTH_Y)
	)
	dct8puntos_1
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
    .y0 ( y0 ), 
	 .y1 ( y2 ), 
	 .y2 ( y4 ), 
	 .y3 ( y6 ),
	 .y4 ( y8 ), 
	 .y5 ( y10 ), 
	 .y6 ( y12 ), 
	 .y7 ( y14 )
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
				
				a0_reg <= 0;
				a1_reg <= 0;
				a2_reg <= 0;
				a3_reg <= 0;
				a4_reg <= 0;
				a5_reg <= 0;
				a6_reg <= 0;
				a7_reg <= 0;
				b0_reg <= 0;
				b1_reg <= 0;
				b2_reg <= 0;
				b3_reg <= 0;
				b4_reg <= 0;
				b5_reg <= 0;
				b6_reg <= 0;
				b7_reg <= 0;
				
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
				
				a0_reg <= a0_next;
				a1_reg <= a1_next;
				a2_reg <= a2_next;
				a3_reg <= a3_next;
				a4_reg <= a4_next;
				a5_reg <= a5_next;
				a6_reg <= a6_next;
				a7_reg <= a7_next;
				
				b0_reg <= b0_next;
				b1_reg <= b1_next;
				b2_reg <= b2_next;
				b3_reg <= b3_next;
				b4_reg <= b4_next;
				b5_reg <= b5_next;
				b6_reg <= b6_next;
				b7_reg <= b7_next;
			
		end
	end
	
	assign a0_next = x0_reg + x15_reg;
	assign a1_next = x1_reg + x14_reg;
	assign a2_next = x2_reg + x13_reg;
	assign a3_next = x3_reg + x12_reg;
	assign a4_next = x4_reg + x11_reg;
	assign a5_next = x5_reg + x10_reg;
	assign a6_next = x6_reg + x9_reg;
	assign a7_next = x7_reg + x8_reg;
	
	
	assign b0_next = x8_reg - x7_reg;
	assign b1_next = x9_reg - x6_reg;
	assign b2_next = x10_reg - x5_reg;
	assign b3_next = x11_reg - x4_reg;
	assign b4_next = x12_reg - x3_reg;
	assign b5_next = x13_reg - x2_reg;
	assign b6_next = x14_reg - x1_reg;
	assign b7_next = x15_reg - x0_reg;
	
	shift_add16
	#(
		.WIDTH (WIDTH_Y)
	)
	shift_add16_1
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
		.y1 (y1),
		.y3 (y3),
		.y5 (y5),
		.y7 (y7),
		.y9 (y9),
		.y11 (y11),
		.y13 (y13),
		.y15 (y15)
	);
	
endmodule
