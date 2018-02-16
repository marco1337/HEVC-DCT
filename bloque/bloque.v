module bloque
#(
parameter	WIDTH_X = 9,
parameter	WIDTH_Y = 17
)
(
	input wire signed [WIDTH_X-1:0] x0,
	input wire signed [WIDTH_X-1:0] x1,
	input wire signed [WIDTH_X-1:0] x2,
	input wire signed [WIDTH_X-1:0] x3,
	
	input wire clk,rst,load,

	output reg signed [WIDTH_Y-1:0] y0,
	output reg signed [WIDTH_Y-1:0] y1,
	output reg signed [WIDTH_Y-1:0] y2,
	output reg signed [WIDTH_Y-1:0] y3
	
);
	reg[WIDTH_X-1:0] a0_reg;
	reg[WIDTH_X-1:0] a1_reg;
	reg[WIDTH_X-1:0] a2_reg;
	reg[WIDTH_X-1:0] a3_reg;
	
	wire[WIDTH_Y-1:0] y0_d;
	wire[WIDTH_Y-1:0] y1_d;
	wire[WIDTH_Y-1:0] y2_d;
	wire[WIDTH_Y-1:0] y3_d;
	
//	always @ (posedge clk or negedge rst_b)
	always @ (posedge clk)
	begin
//		if(!rst_b) begin
		if(rst) begin
				y0 <= 0;
				y1 <= 0;
				y2 <= 0;
				y3 <= 0;

				a0_reg <= 0;
				a1_reg <= 0;
				a2_reg <= 0;
				a3_reg <= 0;
		end
		else begin
				y0 <= y0_d;
				y1 <= y1_d;
				y2 <= y2_d;
				y3 <= y3_d;
				if (load) begin
					a0_reg <= x0;
					a1_reg <= x1;
					a2_reg <= x2;
					a3_reg <= x3;
				end
		end
	end
	
	wire[WIDTH_Y-1:0] a0;
	wire[WIDTH_Y-1:0] a1;
	wire[WIDTH_Y-1:0] b0;
	wire[WIDTH_Y-1:0] b1;
	
	wire[WIDTH_Y-1:0] t0_64; 
	wire[WIDTH_Y-1:0] t0_83;
	wire[WIDTH_Y-1:0] t0_36;
	wire[WIDTH_Y-1:0] t1_64;
	wire[WIDTH_Y-1:0] t1_36;
	wire[WIDTH_Y-1:0] t1_83;
	
	assign a0 = a0_reg + a3_reg;
	assign a1 = a1_reg + a2_reg;
	assign b0 = a0_reg - a3_reg;
	assign b1 = a1_reg - a2_reg;
	
	assign t0_64 = {a0,6'b000000};
	assign t0_83 = {b0,6'b000000} + {b0,4'b0000} + {b0,1'b0} + b0;
	assign t0_36 = {b0,5'b00000} + {b0,2'b00};
	assign t1_64 = {a1,6'b000000};
	assign t1_83 = {b1,6'b000000} + {b1,4'b0000} + {b1,1'b0} + b1;
	assign t1_36 = {b1,5'b00000} + {b1,2'b00};

	assign y0_d = t0_64 + t1_64;
	assign y1_d = t1_36 + t0_83;
	assign y2_d = t0_64 - t1_64;
	assign y3_d = t0_36 + t1_83;

	endmodule
	