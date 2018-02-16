module dct8puntos
#(
parameter	WIDTH_X = 9,
parameter	WIDTH_Y = 19
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
	
	reg signed [WIDTH_Y-1:0] a0_reg;
	reg signed [WIDTH_Y-1:0] a1_reg;
	reg signed [WIDTH_Y-1:0] a2_reg;
	reg signed [WIDTH_Y-1:0] a3_reg;
	reg signed [WIDTH_Y-1:0] b0_reg;
	reg signed [WIDTH_Y-1:0] b1_reg;
	reg signed [WIDTH_Y-1:0] b2_reg;
	reg signed [WIDTH_Y-1:0] b3_reg;
	
	wire signed [WIDTH_Y-1:0] a0_next;
	wire signed [WIDTH_Y-1:0] a1_next;
	wire signed [WIDTH_Y-1:0] a2_next;
	wire signed [WIDTH_Y-1:0] a3_next;
	wire signed [WIDTH_Y-1:0] b0_next;
	wire signed [WIDTH_Y-1:0] b1_next;
	wire signed [WIDTH_Y-1:0] b2_next;
	wire signed [WIDTH_Y-1:0] b3_next;
	
	bloque 
	dct4puntos_1
	(
	 .clk      ( clk  ),
    .rst      ( rst  ),
    .load     ( load ),
    .x0 ( a0_reg ),
	 .x1 ( a1_reg ),
	 .x2 ( a2_reg ),
	 .x3 ( a3_reg ),
    .y0 ( y0 ), 
	 .y1 ( y2 ), 
	 .y2 ( y4 ), 
	 .y3 ( y6 )
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
				
				a0_reg <= 0;
				a1_reg <= 0;
				a2_reg <= 0;
				a3_reg <= 0;
				b0_reg <= 0;
				b1_reg <= 0;
				b2_reg <= 0;
				b3_reg <= 0;
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
				
				a0_reg <= a0_next;
				a1_reg <= a1_next;
				a2_reg <= a2_next;
				a3_reg <= a3_next;
				b0_reg <= b0_next;
				b1_reg <= b1_next;
				b2_reg <= b2_next;
				b3_reg <= b3_next;
				
			end
		end
	end
	
	assign a0_next = x0_reg + x7_reg;
	assign a1_next = x1_reg + x6_reg;
	assign a2_next = x2_reg + x3_reg;
	assign a3_next = x4_reg + x5_reg;
	assign b0_next = x0_reg - x7_reg;
	assign b1_next = x1_reg - x6_reg;
	assign b2_next = x2_reg - x3_reg;
	assign b3_next = x4_reg - x5_reg;
	
//   assign y1_next = {b0_reg,6'b000000} + {b0_reg,4'b0000} + {b0_reg,3'b000} + b0_reg + {b1_reg,6'b000000} + {b1_reg,3'b000} + {b1_reg,1'b0} + b1_reg + {b2_reg,5'b00000} + {b2_reg,4'b0000} + {b2_reg,1'b0} + {b3_reg,4'b0000} + {b3_reg,1'b0};
//   assign y5_next = {b0_reg,5'b00000} + {b0_reg,4'b0000} + {b0_reg,1'b0} - {b1_reg,6'b000000} - {b1_reg,4'b0000} - {b1_reg,3'b000} - b1_reg + {b2_reg,4'b0000} + {b2_reg,1'b0} + {b3_reg,6'b000000} + {b3_reg,3'b000} + {b3_reg,1'b0} + b3_reg;
//	assign y3_next = {b0_reg,6'b000000} + {b0_reg,3'b000} + {b0_reg,1'b0} + b0_reg - {b1_reg,4'b0000} - {b1_reg,1'b0} - {b2_reg,6'b000000} - {b2_reg,4'b0000} - {b2_reg,3'b000} - b2_reg - {b3_reg,5'b00000} + {b3_reg,4'b0000} + {b3_reg,1'b0};
//	assign y7_next = {b0_reg,4'b0000} + {b0_reg,1'b0} - {b1_reg,5'b00000} - {b1_reg,4'b0000} - {b1_reg,1'b0} + {b2_reg,6'b000000} + {b2_reg,3'b000} + {b2_reg,1'b0} + b2_reg - {b3_reg,6'b000000} - {b3_reg,4'b0000} - {b3_reg,3'b000} - b3_reg;
	
	shift_add8 
	shift_add8_1
	(
		.clk      ( clk  ),
		.rst      ( rst  ),
		.b0 (b0_reg),
		.b1 (b1_reg),
		.b2 (b2_reg),
		.b3 (b3_reg),
		.y1 (y1),
		.y3 (y3),
		.y5 (y5),
		.y7 (y7)
	);
	
endmodule
