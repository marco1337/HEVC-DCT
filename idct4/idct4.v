module idct4
#(
	parameter WIDTH_X = 16,
	parameter WIDTH_Y = 22
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

	reg signed [WIDTH_X-1:0] x0_reg;
	reg signed [WIDTH_X-1:0] x1_reg;
	reg signed [WIDTH_X-1:0] x2_reg;
	reg signed [WIDTH_X-1:0] x3_reg;
	
	wire signed [WIDTH_Y-1:0] y0_d;
	wire signed [WIDTH_Y-1:0] y1_d;
	wire signed [WIDTH_Y-1:0] y2_d;
	wire signed [WIDTH_Y-1:0] y3_d;

	always @ (posedge clk)
	begin
//		if(!rst_b) begin
		if(rst) begin
				y0 <= 0;
				y1 <= 0;
				y2 <= 0;
				y3 <= 0;

				x0_reg <= 0;
				x1_reg <= 0;
				x2_reg <= 0;
				x3_reg <= 0;
		end
		else begin
				y0 <= y0_d;
				y1 <= y1_d;
				y2 <= y2_d;
				y3 <= y3_d;
				
				if (load) begin
					x0_reg <= x0;
					x1_reg <= x1;
					x2_reg <= x2;
					x3_reg <= x3;
				end
				
		end
	end 
	
	wire signed [WIDTH_Y-1:0] z0;
	wire signed [WIDTH_Y-1:0] z1;
	wire signed [WIDTH_Y-1:0] z2;
	wire signed [WIDTH_Y-1:0] z3;
	
	assign z0= {x0_reg,6'b000000}+{x2_reg,6'b000000};
	assign z1= {x0_reg,6'b000000}-{x2_reg,6'b000000};
	
	assign z2= -{x1_reg,2'b00}-{x1_reg,5'b00000}+x3_reg+{x3_reg,1'b0}+{x3_reg,4'b0000}+{x3_reg,6'b000000};
	assign z3= -x1_reg-{x1_reg,1'b0}-{x1_reg,4'b0000}-{x1_reg,6'b000000}-{x3_reg,2'b00}-{x3_reg,5'b00000};
	
	assign y0_d = z0 - z3;
	assign y1_d = z1 - z2;
	assign y2_d = z1 + z2;
	assign y3_d = z0 + z3;
	
endmodule
	
	