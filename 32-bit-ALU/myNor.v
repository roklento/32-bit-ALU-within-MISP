module myNor(
output [31:0] R,
input [31:0] A,
input [31:0] B);


	wire [31:0]wOr;
	myOr s0(wOr, A, B);
	
	not s1(R[0],wOr[0]);
	not s2(R[1],wOr[1]);
	not s3(R[2],wOr[2]);
	not s4(R[3],wOr[3]);
	not s5(R[4],wOr[4]);
	not s6(R[5],wOr[5]);
	not s7(R[6],wOr[6]);
	not s8(R[7],wOr[7]);
	not s9(R[8],wOr[8]);
	not s10(R[9],wOr[9]);
	not s11(R[10],wOr[10]);
	not s12(R[11],wOr[11]);
	not s13(R[12],wOr[12]);
	not s14(R[13],wOr[13]);
	not s15(R[14],wOr[14]);
	not s16(R[15],wOr[15]);
	not s17(R[16],wOr[16]);
	not s18(R[17],wOr[17]);
	not s19(R[18],wOr[18]);
	not s20(R[19],wOr[19]);
	not s21(R[20],wOr[20]);
	not s22(R[21],wOr[21]);
	not s23(R[22],wOr[22]);
	not s24(R[23],wOr[23]);
	not s25(R[24],wOr[24]);
	not s26(R[25],wOr[25]);
	not s27(R[26],wOr[26]);
	not s28(R[27],wOr[27]);
	not s29(R[28],wOr[28]);
	not s30(R[29],wOr[29]);
	not s31(R[30],wOr[30]);
	not s32(R[31],wOr[31]);

endmodule