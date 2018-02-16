module transpuesta
#(
	parameter WIDTH = 21
)
(
	input wire signed [WIDTH-1:0] x0,
	input wire signed [WIDTH-1:0] x1,
	input wire signed [WIDTH-1:0] x2,
	input wire signed [WIDTH-1:0] x3,
	input wire signed [WIDTH-1:0] x4,
	input wire signed [WIDTH-1:0] x5,
	input wire signed [WIDTH-1:0] x6,
	input wire signed [WIDTH-1:0] x7,
	input wire signed [WIDTH-1:0] x8,
	input wire signed [WIDTH-1:0] x9,
	input wire signed [WIDTH-1:0] x10,
	input wire signed [WIDTH-1:0] x11,
	input wire signed [WIDTH-1:0] x12,
	input wire signed [WIDTH-1:0] x13,
	input wire signed [WIDTH-1:0] x14,
	input wire signed [WIDTH-1:0] x15,
	input wire signed [WIDTH-1:0] x16,
	input wire signed [WIDTH-1:0] x17,
	input wire signed [WIDTH-1:0] x18,
	input wire signed [WIDTH-1:0] x19,
	input wire signed [WIDTH-1:0] x20,
	input wire signed [WIDTH-1:0] x21,
	input wire signed [WIDTH-1:0] x22,
	input wire signed [WIDTH-1:0] x23,
	input wire signed [WIDTH-1:0] x24,
	input wire signed [WIDTH-1:0] x25,
	input wire signed [WIDTH-1:0] x26,
	input wire signed [WIDTH-1:0] x27,
	input wire signed [WIDTH-1:0] x28,
	input wire signed [WIDTH-1:0] x29,
	input wire signed [WIDTH-1:0] x30,
	input wire signed [WIDTH-1:0] x31,
	
	input wire clk,rst,
	input wire load,
	input wire unload,
	
	output wire signed [WIDTH-1:0] y0,
	output wire signed [WIDTH-1:0] y1,
	output wire signed [WIDTH-1:0] y2,
	output wire signed [WIDTH-1:0] y3,
	output wire signed [WIDTH-1:0] y4,
	output wire signed [WIDTH-1:0] y5,
	output wire signed [WIDTH-1:0] y6,
	output wire signed [WIDTH-1:0] y7,
	output wire signed [WIDTH-1:0] y8,
	output wire signed [WIDTH-1:0] y9,
	output wire signed [WIDTH-1:0] y10,
	output wire signed [WIDTH-1:0] y11,
	output wire signed [WIDTH-1:0] y12,
	output wire signed [WIDTH-1:0] y13,
	output wire signed [WIDTH-1:0] y14,
	output wire signed [WIDTH-1:0] y15,
	output wire signed [WIDTH-1:0] y16,
	output wire signed [WIDTH-1:0] y17,
	output wire signed [WIDTH-1:0] y18,
	output wire signed [WIDTH-1:0] y19,
	output wire signed [WIDTH-1:0] y20,
	output wire signed [WIDTH-1:0] y21,
	output wire signed [WIDTH-1:0] y22,
	output wire signed [WIDTH-1:0] y23,
	output wire signed [WIDTH-1:0] y24,
	output wire signed [WIDTH-1:0] y25,
	output wire signed [WIDTH-1:0] y26,
	output wire signed [WIDTH-1:0] y27,
	output wire signed [WIDTH-1:0] y28,
	output wire signed [WIDTH-1:0] y29,
	output wire signed [WIDTH-1:0] y30,
	output wire signed [WIDTH-1:0] y31
);


	reg signed [WIDTH-1:0] temp [31:0][31:0];
	reg signed [WIDTH-1:0] temp_next [31:0][31:0];
	integer ROW, COLUMN;
	
		
	always @ (posedge clk)
	begin
		if(rst) begin
				for(COLUMN=0;COLUMN<32;COLUMN=COLUMN+1)begin
					for(ROW=0;ROW<32;ROW=ROW+1)begin
						temp[ROW][COLUMN] <= 0;
					end
				end
				
		end
		else begin
			
			if (load | unload) begin
				
				for(COLUMN=0;COLUMN<32;COLUMN=COLUMN+1)begin
					for(ROW=0;ROW<32;ROW=ROW+1)begin
						temp[ROW][COLUMN] <= temp_next[ROW][COLUMN];
					end
				end	
				
			end
			
			
		end
	end
	
	always @* begin
	
		for(COLUMN=0;COLUMN<32;COLUMN=COLUMN+1)begin
					for(ROW=0;ROW<32;ROW=ROW+1)begin
						temp_next[ROW][COLUMN] = temp[ROW][COLUMN];
					end
		end
	
		if (load) begin
		
			temp_next[0][0] = x0;
			temp_next[0][1] = x1;
			temp_next[0][2] = x2;
			temp_next[0][3] = x3;
			temp_next[0][4] = x4;
			temp_next[0][5] = x5;
			temp_next[0][6] = x6;
			temp_next[0][7] = x7;
			temp_next[0][8] = x8;
			temp_next[0][9] = x9;
			temp_next[0][10] = x10;
			temp_next[0][11] = x11;
			temp_next[0][12] = x12;
			temp_next[0][13] = x13;
			temp_next[0][14] = x14;
			temp_next[0][15] = x15;
			temp_next[0][16] = x16;
			temp_next[0][17] = x17;
			temp_next[0][18] = x18;
			temp_next[0][19] = x19;
			temp_next[0][20] = x20;
			temp_next[0][21] = x21;
			temp_next[0][22] = x22;
			temp_next[0][23] = x23;
			temp_next[0][24] = x24;
			temp_next[0][25] = x25;
			temp_next[0][26] = x26;
			temp_next[0][27] = x27;
			temp_next[0][28] = x28;
			temp_next[0][29] = x29;
			temp_next[0][30] = x30;
			temp_next[0][31] = x31;
			
			for(ROW=0;ROW<32;ROW=ROW+1) begin
				for(COLUMN=1;COLUMN<32;COLUMN=COLUMN+1) begin
					temp_next[COLUMN][ROW] = temp[COLUMN-1][ROW];
				end
			end
			
		end
		else if (unload) begin
		
			for (COLUMN=0;COLUMN<32;COLUMN=COLUMN+1) begin
				for (ROW=0;ROW<31;ROW=ROW+1) begin
					temp_next[COLUMN][ROW] = temp[COLUMN][ROW+1];
				end
			end
			
			temp_next[0][31] = 0;
			temp_next[1][31] = 0;
			temp_next[2][31] = 0;
			temp_next[3][31] = 0;
			temp_next[4][31] = 0;
			temp_next[5][31] = 0;
			temp_next[6][31] = 0;
			temp_next[7][31] = 0;
			temp_next[8][31] = 0;
			temp_next[9][31] = 0;
			temp_next[10][31] = 0;
			temp_next[11][31] = 0;
			temp_next[12][31] = 0;
			temp_next[13][31] = 0;
			temp_next[14][31] = 0;
			temp_next[15][31] = 0;
			temp_next[16][31] = 0;
			temp_next[17][31] = 0;
			temp_next[18][31] = 0;
			temp_next[19][31] = 0;
			temp_next[20][31] = 0;
			temp_next[21][31] = 0;
			temp_next[22][31] = 0;
			temp_next[23][31] = 0;
			temp_next[24][31] = 0;
			temp_next[25][31] = 0;
			temp_next[26][31] = 0;
			temp_next[27][31] = 0;
			temp_next[28][31] = 0;
			temp_next[29][31] = 0;
			temp_next[30][31] = 0;
			temp_next[31][31] = 0;
		
		end
		
	end
	
	assign y0 = temp[0][0];
	assign y1 = temp[1][0];
	assign y2 = temp[2][0];
	assign y3 = temp[3][0];
	assign y4 = temp[4][0];
	assign y5 = temp[5][0];
	assign y6 = temp[6][0];
	assign y7 = temp[7][0];
	assign y8 = temp[8][0];
	assign y9 = temp[9][0];
	assign y10 = temp[10][0];
	assign y11 = temp[11][0];
	assign y12 = temp[12][0];
	assign y13 = temp[13][0];
	assign y14 = temp[14][0];
	assign y15 = temp[15][0];
	assign y16 = temp[16][0];
	assign y17 = temp[17][0];
	assign y18 = temp[18][0];
	assign y19 = temp[19][0];
	assign y20 = temp[20][0];
	assign y21 = temp[21][0];
	assign y22 = temp[22][0];
	assign y23 = temp[23][0];
	assign y24 = temp[24][0];
	assign y25 = temp[25][0];
	assign y26 = temp[26][0];
	assign y27 = temp[27][0];
	assign y28 = temp[28][0];
	assign y29 = temp[29][0];
	assign y30 = temp[30][0];
	assign y31 = temp[31][0];
	
	
endmodule
	
 





