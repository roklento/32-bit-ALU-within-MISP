module alu32 (
input clk, 
input reset,
input start,
input [31:0] A,
input [31:0] B, 
input [2:0] S,
output done,
output [31:0] R
);

	// Operations codes
	localparam AND = 3'b000;
	localparam OR = 3'b001;
	localparam XOR = 3'b010;
	localparam NOR = 3'b011;
	localparam SLT = 3'b100;
	localparam ADD  = 3'b101;
	localparam SUB = 3'b110;
	localparam MOD = 3'b111;
	// Intermediate wires
	wire [31:0] wAnd;
	wire [31:0] wOr;
	wire [31:0] wXor;
	wire [31:0] wNor;
	wire [31:0] wSlt;
	wire [31:0] wCLA_Add;
	wire [31:0] wCLA_Sub;
	wire [31:0] wMod;  
	wire carry_out;
	wire wCarry_out;
	wire [31:0] notB = ~B;

	// Instantiation of other operations
	myAnd s1(wAnd, A, B);
	myOr s2(wOr, A, B);
	myXor s3(wXor, A, B);
	myNor s4(wNor, A, B);
	setLessThan s5(wSlt, A, B);
	thirty_two_bit_cla s6(A, B, 1'b0, wCLA_Add, wCarry_out); // ADD
	thirty_two_bit_cla s7(A, notB, 1'b1, wCLA_Sub, wCarry_out); // SUB
	myMod s8(clk,reset,start,A,B,wMod,done);

	// Multiplexer for selecting the operation
	mux8x1 sf(wAnd,wSlt,wXor,wCLA_Sub,wOr,wCLA_Add,wNor,wMod,S,R);

endmodule