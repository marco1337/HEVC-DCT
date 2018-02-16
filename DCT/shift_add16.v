module shift_add16
#(
	parameter WIDTH = 20
)
(
	input wire clk,rst,
	input wire signed[WIDTH-1:0] b0,
	input wire signed[WIDTH-1:0] b1,
	input wire signed[WIDTH-1:0] b2,
	input wire signed[WIDTH-1:0] b3,
	input wire signed[WIDTH-1:0] b4,
	input wire signed[WIDTH-1:0] b5,
	input wire signed[WIDTH-1:0] b6,
	input wire signed[WIDTH-1:0] b7,
	
	output reg signed[WIDTH-1:0] y1,
	output reg signed[WIDTH-1:0] y3,
	output reg signed[WIDTH-1:0] y5,
	output reg signed[WIDTH-1:0] y7,
	output reg signed[WIDTH-1:0] y9,
	output reg signed[WIDTH-1:0] y11,
	output reg signed[WIDTH-1:0] y13,
	output reg signed[WIDTH-1:0] y15
);

	wire signed [WIDTH-1:0] y1_d;
	wire signed [WIDTH-1:0] y3_d;
	wire signed [WIDTH-1:0] y5_d;
	wire signed [WIDTH-1:0] y7_d;
	wire signed [WIDTH-1:0] y9_d;
	wire signed [WIDTH-1:0] y11_d;
	wire signed [WIDTH-1:0] y13_d;
	wire signed [WIDTH-1:0] y15_d;
	
	always @ (posedge clk)
	begin
//		if(!rst_b) begin
		if(rst) begin
				y1 <= 0;
				y3 <= 0;
				y5 <= 0;
				y7 <= 0;
				y9 <= 0;
				y11 <= 0;
				y13 <= 0;
				y15 <= 0;
		end
		else begin
				y1 <= y1_d;
				y3 <= y3_d;
				y5 <= y5_d;
				y7 <= y7_d;
				y9 <= y9_d;
				y11 <= y11_d;
				y13 <= y13_d;
				y15 <= y15_d;
				
		end
	end
	
	assign y1_d = {b0,6'b000000} + {b0,4'b0000} + {b0,3'b000} + {b0,1'b0} + {b1,6'b000000} + {b1,4'b0000} + {b1,2'b00} + {b1,1'b0} + b1 + {b2,6'b000000} + {b2,4'b0000} + {b3,6'b000000} + {b3,2'b00} + {b3,1'b0} + {b4,5'b00000} + {b4,4'b0000} + {b4,3'b000} + {b4,1'b0} + {b5,5'b00000} + {b5,3'b000} + {b5,1'b0} + b5 + {b6,4'b0000} + {b6,3'b000} + {b6,1'b0} + {b7,3'b000} + {b7,1'b0};
   assign y3_d = {b0,6'b000000} + {b0,4'b0000} + {b0,2'b00} + {b0,1'b0} + b0 + {b1,5'b00000} + {b1,4'b0000} + {b1,3'b000} + {b1,1'b0} + {b2,3'b000} + {b2,1'b0} - {b3,5'b00000} - {b3,3'b000} - {b3,1'b0} - b3 - {b4,6'b000000} - {b4,4'b0000} - {b5,6'b000000} - {b5,4'b0000} - {b5,3'b000} - {b5,1'b0} - {b6,6'b000000} - {b6,2'b00} - {b6,1'b0} - {b7,4'b0000} - {b7,3'b000} - {b7,1'b0};
	assign y5_d = {b0,6'b000000} + {b0,4'b0000} + {b1,3'b000} + {b1,1'b0} - {b2,6'b000000} - {b2,2'b00} - {b2,1'b0} - {b3,6'b000000} - {b3,4'b0000} - {b3,2'b00} - {b3,1'b0} - b3 - {b4,4'b0000} - {b4,3'b000} - {b4,1'b0} + {b5,5'b00000} + {b5,4'b0000} + {b5,3'b000} + {b5,1'b0} + {b6,6'b000000} + {b6,4'b0000} + {b6,3'b000} + {b6,1'b0} + {b7,5'b00000} + {b7,3'b000} + {b7,1'b0} + b7;
	assign y7_d = {b0,6'b000000} + {b0,2'b00} + {b0,1'b0} - {b1,5'b00000} - {b1,3'b000} - {b1,1'b0} - b1 - {b2,6'b000000} - {b2,4'b0000} - {b2,2'b00} - {b2,1'b0} - b2 + {b3,3'b000} + {b3,1'b0} + {b4,6'b000000} + {b4,4'b0000} + {b4,3'b000} + {b4,1'b0} + {b5,4'b0000} + {b5,3'b000} + {b5,1'b0} - {b6,6'b000000} - {b6,4'b0000} - {b7,5'b00000} + {b7,4'b0000} + {b7,3'b000} + {b7,1'b0};
	assign y9_d  = {b0,5'b00000} + {b0,4'b0000} + {b0,3'b000} + {b0,1'b0} - {b1,6'b000000} - {b1,4'b0000} - {b2,4'b0000} - {b2,3'b000} - {b2,1'b0} + {b3,6'b000000} + {b3,4'b0000} + {b3,3'b000} + {b3,1'b0} - {b4,3'b000} - {b4,1'b0} - {b5,6'b000000} - {b5,4'b0000} - {b5,2'b00} - {b5,1'b0} - b5 + {b6,5'b00000} + {b6,3'b000} + {b6,1'b0} + b6 + {b7,6'b000000} + {b7,2'b00} + {b7,1'b0};
	assign y11_d = {b0,5'b00000} + {b0,3'b000} + {b0,1'b0} + b0 - {b1,6'b000000} - {b1,4'b0000} - {b1,3'b000} - {b1,1'b0} + {b2,5'b00000} + {b2,4'b0000} + {b2,3'b000} + {b2,1'b0} + {b3,4'b0000} + {b3,3'b000} + {b3,1'b0} - {b4,6'b000000} - {b4,4'b0000} - {b4,2'b00} - {b4,1'b0} - b4 + {b5,6'b000000} + {b5,2'b00} + {b5,1'b0} + {b6,3'b000} + {b6,1'b0} - {b7,6'b000000} - {b7,4'b0000}; 
	assign y13_d = {b0,4'b0000} + {b0,3'b000} + {b0,1'b0} - {b1,6'b000000} - {b1,2'b00} - {b1,1'b0} + {b2,6'b000000} + {b2,4'b0000} + {b2,3'b000} + {b2,1'b0} - {b3,6'b000000} - {b3,4'b0000} + {b4,5'b00000} + {b4,3'b000} + {b4,1'b0} + b4 + {b5,3'b000} + {b5,1'b0} - {b6,5'b00000} - {b6,4'b0000} - {b6,3'b000} - {b6,1'b0} + {b7,6'b000000} + {b7,4'b0000} + {b7,2'b00} + {b7,1'b0} + b7;
	assign y15_d = {b0,3'b000} + {b0,1'b0} - {b1,4'b0000} - {b1,3'b000} - {b1,1'b0} + {b2,5'b00000} + {b2,3'b000} + {b2,1'b0} + b2 - {b3,5'b00000} - {b3,4'b0000} - {b3,3'b000} - {b3,1'b0} + {b4,6'b000000} + {b4,2'b00} + {b4,1'b0} - {b5,6'b000000} - {b5,4'b0000} + {b6,6'b000000} + {b6,4'b0000} + {b6,2'b00} + {b6,1'b0} + b6 - {b7,6'b000000} - {b7,4'b0000} - {b7,3'b000} - {b7,1'b0};
	
	//90 = {b0_reg,6'b000000} + {b0_reg,4'b0000} + {b0_reg,3'b000} + {b0_reg,1'b0}
	//87 = {b0_reg,6'b000000} + {b0_reg,4'b0000} + {b0_reg,2'b00} + {b0_reg,1'b0} + b0_reg
	//80 = {b0_reg,6'b000000} + {b0_reg,4'b0000} 
	//70 = {b0_reg,6'b000000} + {b0_reg,2'b00} + {b0_reg,1'b0}
	//57 = {b0_reg,5'b00000} + {b0_reg,4'b0000} + {b0_reg,3'b000} + {b0_reg,1'b0}
	//43 = {b0_reg,5'b00000} + {b0_reg,3'b000} + {b0_reg,1'b0} + b0_reg
	//25 = {b0_reg,4'b0000} + {b0_reg,3'b000} + {b0_reg,1'b0}
	//9  = {b0_reg,3'b000} + {b0_reg,1'b0}
endmodule 