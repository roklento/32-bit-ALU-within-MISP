`define DELAY 20
module alu32_testbench(); 

reg clk, reset, start;
reg [31:0]a;
reg [31:0]b;
reg [2:0]s;
wire [31:0]res;
wire done;
alu32 tst(clk,reset,start,a,b,s,done,res);

	initial begin
		clk = 0;
		forever #20 clk = ~clk;
	end


	initial begin
		reset = 1;  #40; reset = 0;  // Reset işlemini başlat ve bitir
		
		//AND
		a = 32'd15; 
		b = 32'd10; 
		s  = 3'b000;
		#1;
		$display("time = %2d, a =%32b, b=%32b, s=%3b, res=%32b", $time, a, b, s, res);
		#`DELAY;
		//OR
		a = 32'd15; 
		b = 32'd5;  
		s  = 3'b001;
		#`DELAY;
		#1;
		$display("time = %2d, a =%32b, b=%32b, s=%3b, res=%32b", $time, a, b, s, res);
		//XOR
		a = 32'd32; 
		b = 32'd7;  
		s  = 3'b010;
		#`DELAY;
		#1;
		$display("time = %2d, a =%32b, b=%32b, s=%3b, res=%32b", $time, a, b, s, res);
		//NOR
		a = 32'd65; 
		b = 32'd8;  
		s  = 3'b011;
		#1;
		$display("time = %2d, a =%32b, b=%32b, s=%3b, res=%32b", $time, a, b, s, res);
		#`DELAY;
		//LESS THAN
		a = 32'd15; 
		b = 32'd35;  
		s  = 3'b100;
		#1;
		$display("time = %2d, a =%32b, b=%32b, s=%3b, res=%32b", $time, a, b, s, res);
		#`DELAY;
		//ADD
		a = 32'd54; 
		b = 32'd67;  
		s  = 3'b101;
		#1;
		$display("time = %2d, a =%32b, b=%32b, s=%3b, res=%32b", $time, a, b, s, res);
		#`DELAY;
		//SUB
		a = 32'd46; 
		b = 32'd32;  
		s  = 3'b110;
		#1;
		$display("time = %2d, a =%32b, b=%32b, s=%3b, res=%32b", $time, a, b, s, res);
		#`DELAY;
		//MOD
		start = 1;
		a = 32'd5; 
		b = 32'd12;  
		s = 3'b111; 
		#`DELAY;
		wait(done == 1);
		#1;
		$display("time = %2d, a =%32b, b=%32b, s=%3b, res=%32b", $time, a, b, s, res);
		start = 0;
		wait(done == 0);  
		#`DELAY;
	end
endmodule