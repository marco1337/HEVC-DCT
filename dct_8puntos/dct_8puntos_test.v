`timescale 1ns / 100ps

module dct_8puntos_test;

  localparam	WIDTH_X = 9;
  localparam	WIDTH_Y = 19;
	
 // test vector input registers
  reg clk;
  reg load;
  reg rst;
  reg [WIDTH_X-1:0] x0;
  reg [WIDTH_X-1:0] x1;
  reg [WIDTH_X-1:0] x2;
  reg [WIDTH_X-1:0] x3;
  reg [WIDTH_X-1:0] x4;
  reg [WIDTH_X-1:0] x5;
  reg [WIDTH_X-1:0] x6;
  reg [WIDTH_X-1:0] x7;
	// wires                                               
  wire [WIDTH_Y-1:0]  y0;
  wire [WIDTH_Y-1:0]  y1;
  wire [WIDTH_Y-1:0]  y2;
  wire [WIDTH_Y-1:0]  y3;
  wire [WIDTH_Y-1:0]  y4;
  wire [WIDTH_Y-1:0]  y5;
  wire [WIDTH_Y-1:0]  y6;
  wire [WIDTH_Y-1:0]  y7;

// assign statements (if any)                          
dct8puntos dct8puntos_inst (
// port map - connection between master ports and signals/registers   
	.clk(clk),
	.load(load),
	.rst(rst),
	.x0(x0),
	.x1(x1),
	.x2(x2),
	.x3(x3),
	.x4(x4),
	.x5(x5),
	.x6(x6),
	.x7(x7),
	.y0(y0),
	.y1(y1),
	.y2(y2),
	.y3(y3),
	.y4(y4),
	.y5(y5),
	.y6(y6),
	.y7(y7)
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
		x0 = 9'b000000000; x1 = 9'b000000000; x2 = 9'b000000000; x3 = 9'b000000000; x4 = 9'b000000000; x5 = 9'b000000000; x6 = 9'b000000000; x7 = 9'b000000000;
		
		#4 rst = 1'b0;
		
		$display($time, " << Coming out of reset >>");
		//load = 1'b1;x0 = 9'h1; x1 = 9'h1; x2 = 9'h1; x3 = 9'h1; x4 = 9'h1; x5 = 9'h1; x6 = 9'h1; x7 = 9'h1;
		@(negedge clk); // wait till the negedge of clk then continue
		load = 1'b1;x0 = 9'h100; x1 = 9'h100; x2 = 9'h100; x3 = 9'h100; x4 = 9'h100; x5 = 9'h100; x6 = 9'h100; x7 = 9'h100; $display($time, " << Loading value 1 >>");#4;
		load = 1'b1;x0 = 9'h2; x1 = 9'h2; x2 = 9'h2; x3 = 9'h2; x4 = 9'h2; x5 = 9'h2; x6 = 9'h2; x7 = 9'h2; $display($time, " << Loading value 2 >>");#4;
		load = 1'b1;x0 = 9'h3; x1 = 9'h3; x2 = 9'h3; x3 = 9'h3; x4 = 9'h3; x5 = 9'h3; x6 = 9'h3; x7 = 9'h3; $display($time, " << Loading value 2 >>");#16;
		//load = 1'b1; x0 = 9'b100000000; x1 = 9'b100000000; x2 = 9'b100000000; x3 = 9'b100000000; x4 = 9'b100000000; x5 = 9'b100000000; x6 = 9'b100000000; x7 = 9'b100000000; $display($time, " << Loading value 3 >>");#8;
		//load = 1'b1; x0 = 9'b000000001; x1 = 9'b000000001; x2 = 9'b000000001; x3 = 9'b000000001; x4 = 9'b000000001; x5 = 9'b000000001; x6 = 9'b000000001; x7 = 9'b000000001; $display($time, " << Loading value 4 >>");#8;
		//load = 1'b1; x0 = 9'b100000000; x1 = 9'b100000000; x2 = 9'b100000000; x3 = 9'b100000000; x4 = 9'b100000000; x5 = 9'b100000000; x6 = 9'b100000000; x7 = 9'b100000000; $display($time, " << Loading value 5 >>");#8;
		
		$display($time, " << Simulation Complete >>");
		$finish;
		// stop the simulation
	end
		
endmodule
  


