`timescale 1ns / 100ps

module bloque_test;

  localparam	WIDTH_X = 9;
  localparam	WIDTH_Y = 17;
	
  reg clk;
  reg load;
  reg rst;
  reg [WIDTH_X-1:0] x0;
  reg [WIDTH_X-1:0] x1;
  reg [WIDTH_X-1:0] x2;
  reg [WIDTH_X-1:0] x3;
  // wires                                               
  wire [WIDTH_Y-1:0]  y0;
  wire [WIDTH_Y-1:0]  y1;
  wire [WIDTH_Y-1:0]  y2;
  wire [WIDTH_Y-1:0]  y3;

  bloque
  bloque_inst
   ( 
    .clk      ( clk  ),
    .rst      ( rst ),
    .load     ( load ),
    .x0 ( x0 ),
	 .x1 ( x1 ),
	 .x2 ( x2 ),
	 .x3 ( x3 ),
    .y0 ( y0 ), 
	 .y1 ( y1 ), 
	 .y2 ( y2 ), 
	 .y3 ( y3 ) 
   );                            
	
	always #2 
		clk = ~clk;  
	
	
	initial
		begin
		$display($time, " << Starting the Simulation >>");
		clk = 1'b0;
		// at time 0
		rst = 1'b1;
		// reset is active
		load = 1'b0;
		// load disabled
		x0 = 9'b000000000; x1 = 9'b000000000; x2 = 9'b000000000; x3 = 9'b000000000;
		// input data is 00000000
		#4 rst = 1'b0;
		// at time 4 release reset
		$display($time, " << Coming out of reset >>");
		
		@(negedge clk); // wait till the negedge of clk then continue
		load = 1'b1; x0 = 9'b100000000; x1 = 9'b100000000; x2 = 9'b100000000; x3 = 9'b100000000; $display($time, " << Loading value 1 >>");#4;
		load = 1'b1; x0 = 9'b000000001; x1 = 9'b000000001; x2 = 9'b000000001; x3 = 9'b000000001; $display($time, " << Loading value 2 >>");#4;
		load = 1'b1; x0 = 9'b100000000; x1 = 9'b100000000; x2 = 9'b100000000; x3 = 9'b100000000; $display($time, " << Loading value 3 >>");#4;
		load = 1'b1; x0 = 9'b000000001; x1 = 9'b000000001; x2 = 9'b000000001; x3 = 9'b000000001; $display($time, " << Loading value 4 >>");#4;
		load = 1'b0; x0 = 9'b100000000; x1 = 9'b100000000; x2 = 9'b100000000; x3 = 9'b100000000; $display($time, " << Loading value 5 >>");#4;
		
		$display($time, " << Simulation Complete >>");
		$finish;
		// stop the simulation
	end
		
endmodule
  


