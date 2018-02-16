module shift_add8
#(
parameter	WIDTH = 19
)
(
	input wire clk,rst,
	input wire signed[WIDTH-1:0] b0,
	input wire signed[WIDTH-1:0] b1,
	input wire signed[WIDTH-1:0] b2,
	input wire signed[WIDTH-1:0] b3,
	output reg signed[WIDTH-1:0] y1,
	output reg signed[WIDTH-1:0] y3,
	output reg signed[WIDTH-1:0] y5,
	output reg signed[WIDTH-1:0] y7
);
	wire signed [WIDTH-1:0] y1_d;
	wire signed [WIDTH-1:0] y3_d;
	wire signed [WIDTH-1:0] y5_d;
	wire signed [WIDTH-1:0] y7_d;
	
	reg signed [WIDTH-1:0] temp [3:0];
	reg signed [WIDTH-1:0] temp_next [3:0];
	integer ROW;
	
	
	always @ (posedge clk)
	begin
//		if(!rst_b) begin
		if(rst) begin
				y1 <= 0;
				y3 <= 0;
				y5 <= 0;
				y7 <= 0;
				
				for(ROW=0;ROW<4;ROW=ROW+1)begin
						temp[ROW] <= 0;
				end
		end
		else begin
				y1 <= temp[0];
				y3 <= temp[1];
				y5 <= temp[2];
				y7 <= temp[3];
				
				for(ROW=0;ROW<4;ROW=ROW+1)begin
						temp[ROW] <= temp_next[ROW];
				end
				
		end
	end
	
	always @(*) begin
		
		
		temp_next[0] = y1_d;
		temp_next[1] = y3_d;
		temp_next[2] = y5_d;
		temp_next[3] = y7_d;
		
		
	end
	
	assign y1_d = -{b0,1'b0}-{b0,4'b0000}-{b1,1'b0}-{b1,4'b0000}-{b1,5'b00000}-b2-{b2,1'b0}-{b2,3'b000}-{b2,6'b000000}-b3-{b3,3'b000}-{b3,4'b0000}-{b3,6'b000000};

	assign y3_d = {b0,1'b0}+{b0,4'b0000}+{b0,5'b00000}+b1+{b1,3'b000}+{b1,4'b0000}+{b1,6'b000000}+{b2,1'b0}+{b2,4'b0000}-b3-{b3,1'b0}-{b3,3'b000}-{b3,6'b000000};

	assign y5_d = -b0-{b0,1'b0}-{b0,3'b000}-{b0,6'b000000}-{b1,1'b0}-{b1,4'b0000}+b2+{b2,3'b000}+{b2,4'b0000}+{b2,6'b000000}-{b3,1'b0}-{b3,4'b0000}-{b3,5'b00000};

	assign y7_d = b0+{b0,3'b000}+{b0,4'b0000}+{b0,6'b000000}-b1-{b1,1'b0}-{b1,3'b000}-{b1,6'b000000}+{b2,1'b0}+{b2,4'b0000}+{b2,5'b00000}-{b3,1'b0}-{b3,4'b0000};

endmodule 