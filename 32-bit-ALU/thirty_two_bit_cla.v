module thirty_two_bit_cla(
input [31:0] a, b,
input carry_in,
output [31:0] sum,
output carry_out
);

	wire [7:0] carry_signals;
	// 8 4-bit CLA modulas
	four_bit_cla cla0(a[3:0], b[3:0], carry_in, sum[3:0], carry_signals[0]);
	four_bit_cla cla1(a[7:4], b[7:4], carry_signals[0], sum[7:4], carry_signals[1]);
	four_bit_cla cla2(a[11:8], b[11:8], carry_signals[1], sum[11:8], carry_signals[2]);
	four_bit_cla cla3(a[15:12], b[15:12], carry_signals[2], sum[15:12], carry_signals[3]);
	four_bit_cla cla4(a[19:16], b[19:16], carry_signals[3], sum[19:16], carry_signals[4]);
	four_bit_cla cla5(a[23:20], b[23:20], carry_signals[4], sum[23:20], carry_signals[5]);
	four_bit_cla cla6(a[27:24], b[27:24], carry_signals[5], sum[27:24], carry_signals[6]);
	four_bit_cla cla7(a[31:28], b[31:28], carry_signals[6], sum[31:28], carry_out);

endmodule
