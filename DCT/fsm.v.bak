module fsm
(
	input wire clk,rst,
	input wire load,
	
	output wire load_1dct,
	output wire load_trans,
	output wire unload_trans,
	output wire load_2dct
);
	//Declaracion de estados
	localparam	IDLE = 3'd0,	
					ONE_DCT = 3'd1,
					LOAD_TRANS = 3'd2,
					UNLOAD_TRANS = 3'd3,
					TWO_DCT = 3'd4,
	//Contadores de cada etapa
					DCT_DELAY = 8,
					TRANS_DELAY = 32;
	
	//Registros de estados
	reg [2:0] state;
	reg [2:0] state_next;
	
	wire last;
	wire [6:0] count;
	
	//Declaracion de contador 78
	counter
	#(
		.WIDTH (8)
	)
	counter1
	(
		.clk (clk),
		.rst (rst),
		.load (load),
		.count (count),
		.n (78),
		.last (last)
	);
	
	assign load_1dct = (state == ONE_DCT)||(state == LOAD_TRANS);
	assign load_trans = (state == LOAD_TRANS);
	assign unload_trans = (state == UNLOAD_TRANS);
	assign load_2dct = (state == TWO_DCT);
	
	always @(posedge clk)
	begin
		
		if (rst) begin
			state <= IDLE;
		end
		else begin
			state <= state_next;
		end
		
	end
	
	always@(*) begin
	
		state_next = state;
		
		case (state)
			IDLE: begin
				if(load) state_next = ONE_DCT;
			end
			
			ONE_DCT: begin
				if(count == 7) state_next = LOAD_TRANS;
			end
			
			LOAD_TRANS: begin
				if(count == 39) state_next = UNLOAD_TRANS;
			end
			
			UNLOAD_TRANS: begin
				if(count == 71) state_next = TWO_DCT;
			end
			
			TWO_DCT: begin
				if(count == 78) state_next = IDLE;
			end
			
			default: begin
				state_next = IDLE;
			end
		endcase
		
	end

endmodule 