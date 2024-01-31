module mux8x1 (
input [31:0] D0,
input [31:0] D1,
input [31:0] D2,
input [31:0] D3,
input [31:0] D4,
input [31:0] D5,
input [31:0] D6,
input [31:0] D7,
input [2:0]S,
output [31:0] F);

	wire [31:0]W1;
	wire [31:0]W2;
	wire [31:0]W3;
	wire [31:0]W4;
	wire [31:0]W5;
	wire [31:0]W6;


	mux2x1 m1(D0,D1,S[2],W1);
	mux2x1 m2(D2,D3,S[2],W2);
	mux2x1 m3(D4,D5,S[2],W3);
	mux2x1 m4(D6,D7,S[2],W4);
	mux2x1 m5(W1,W2,S[1],W5);
	mux2x1 m6(W3,W4,S[1],W6);
	mux2x1 m7(W5,W6,S[0],F);


endmodule


