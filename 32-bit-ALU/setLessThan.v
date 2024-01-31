module setLessThan (
output [31:0]F,
input	[31:0]A,
input	[31:0]B);


	wire [31:0]res;
	wire c;

	thirty_two_bit_cla s0(A,~B, 1'b1, res, c);

	buf s1(F[0],res[31]);
	buf s2(F[1],0);
	buf s3(F[2],0);
	buf s4(F[3],0);
	buf s5(F[4],0);
	buf s6(F[5],0);
	buf s7(F[6],0);
	buf s8(F[7],0);
	buf s9(F[8],0);
	buf s10(F[9],0);
	buf s11(F[10],0);
	buf s12(F[11],0);
	buf s13(F[12],0);
	buf s14(F[13],0);
	buf s15(F[14],0);
	buf s16(F[15],0);
	buf s17(F[16],0);
	buf s18(F[17],0);
	buf s19(F[18],0);
	buf s20(F[19],0);
	buf s21(F[20],0);
	buf s22(F[21],0);
	buf s23(F[22],0);
	buf s24(F[23],0);
	buf s25(F[24],0);
	buf s26(F[25],0);
	buf s27(F[26],0);
	buf s28(F[27],0);
	buf s29(F[28],0);
	buf s30(F[29],0);
	buf s31(F[30],0);
	buf s32(F[31],0);

endmodule