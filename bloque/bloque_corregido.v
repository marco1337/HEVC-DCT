module bloque
#(
parameter	WIDTH_X = 16,
parameter	WIDTH_Y = 22
)
(
	input wire[WIDTH_X-1:0] x0,
	input wire[WIDTH_X-1:0] x1,
	input wire[WIDTH_X-1:0] x2,
	input wire[WIDTH_X-1:0] x3,
	input wire clk,rst,
	input wire load,
	output reg [WIDTH_Y-1:0] y0,
	output reg [WIDTH_Y-1:0] y1,
	output reg [WIDTH_Y-1:0] y2,
	output reg [WIDTH_Y-1:0] y3
	
);
	reg[1:0] state_reg;
	reg[1:0] state_next;
	
	reg[WIDTH_X-1:0] a0_reg;
	reg[WIDTH_X-1:0] a1_reg;
	reg[WIDTH_X-1:0] a2_reg;
	reg[WIDTH_X-1:0] a3_reg;
	
//	reg[WIDTH_X-1:0] a0_next;
//	reg[WIDTH_X-1:0] a1_next;
//	reg[WIDTH_X-1:0] a2_next;
//	reg[WIDTH_X-1:0] a3_next;
	
	wire[WIDTH_Y-1:0] y0_d;
	wire[WIDTH_Y-1:0] y1_d;
	wire[WIDTH_Y-1:0] y2_d;
	wire[WIDTH_Y-1:0] y3_d;
	

	
//	always @ (posedge clk)
//	begin
//		if(rst) begin
//				state_reg <= 0;
//				y0 <= 0;
//				y1 <= 0;
//				y2 <= 0;
//				y3 <= 0;
//				a0_reg <= 0;
//				a1_reg <= 0;
//				a2_reg <= 0;
//				a3_reg <= 0;
//		end
//		else begin
//				state_reg <= state_next;
//				y0 <= y0_next;
//				y1 <= y1_next;
//				y2 <= y2_next;
//				y3 <= y3_next;
//				a0_reg <= a0_next;
//				a1_reg <= a1_next;
//				a2_reg <= a2_next;
//				a3_reg <= a3_next;
//		end
//	end
	
	always @ (posedge clk)
	begin
		if(rst!) begin
				//state_reg <= 0;
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
			if(load) begin
				state_reg <= state_next;
				y0 <= y0_d;
				y1 <= y1_d;
				y2 <= y2_d;
				y3 <= y3_d;
				a0_reg <= a0;
				a1_reg <= a1;
				a2_reg <= a2;
				a3_reg <= a3;
			end
		end
	end
	
	assign y0_d = {a0_reg + a3_reg,6'b000000} + {a1_reg + a2_reg, 6'b000000};
	assign y1_d = {a0_reg + a3_reg,6'b000000} + {a1_reg + a2_reg, 6'b000000};
	assign y2_d = {a0_reg + a3_reg,6'b000000} + {a1_reg + a2_reg, 6'b000000};
	assign y3_d = {a0_reg + a3_reg,6'b000000} + {a1_reg + a2_reg, 6'b000000};
	
	
//	always @ (load,x0,x1,x2,x3,y0,y1,y2,y3,state_reg,a0_reg,a1_reg,a2_reg,a3_reg)
//	begin
//		state_next = state_reg;
//		a0_next = x0;
//		a1_next = x1;
//		a2_next = x2;
//		a3_next = x3;
//		y0_next = y0;
//		y1_next = y1;
//		y2_next = y2;
//		y3_next = y3;
//		
//		case(state_reg)
//			2'b00: begin
//				if(load) begin
//					a0_next = x0;
//					a1_next = x1;
//					a2_next = x2;
//					a3_next = x3;
//					
//					state_next = 2'b01;
//				end
//				
//				//correccion
//				if(load) begin
//					a0_next = x0;
//					a1_next = x1;
//					a2_next = x2;
//					a3_next = x3;
//			end
//			
//			2'b01: begin
//				y0_next = {a0_reg + a3_reg,6'b000000} + {a1_reg + a2_reg, 6'b000000};
//				y1_next = {a0_reg - a3_reg,6'b000000} + {a1_reg - a2_reg, 6'b000000};
//				y2_next = {a0_reg + a3_reg,6'b000000} - {a1_reg + a2_reg, 6'b000000};
//				y3_next = {a0_reg - a3_reg,6'b000000} - {a1_reg - a2_reg, 6'b000000};
//				
//				if(load) begin
//					a0_next = x0;
//					a1_next = x1;
//					a2_next = x2;
//					a3_next = x3;
//					
//					state_next = 2'b01;
//				end
//				else
//					state_next = 2'b10;
//
//			end
//			
//			2'b10: begin
//				y0_next = {a0_reg + a3_reg,6'b000000} + {a1_reg + a2_reg, 6'b000000};
//				y1_next = {a0_reg - a3_reg,6'b000000} + {a1_reg - a2_reg, 6'b000000};
//				y2_next = {a0_reg + a3_reg,6'b000000} - {a1_reg + a2_reg, 6'b000000};
//				y3_next = {a0_reg - a3_reg,6'b000000} - {a1_reg - a2_reg, 6'b000000};
//				state_next = 2'b00;
//			end
//			
//			default: begin
//				state_next = 2'b00;
//			end
//			
//		
//		endcase
//	end	
	
	endmodule




	