module mux2x1 (
input [31:0]D0,
input [31:0]D1,
input S,
output [31:0]F);

	wire [31:0]wAnd1;
	wire [31:0]wAnd2;
	wire sNot;


	not n0(sNot, S);


	and a0(wAnd1[0], sNot, D0[0]);
	and a32(wAnd2[0], S, D1[0]);
	or o0(F[0],wAnd1[0],wAnd2[0]);

	and a1(wAnd1[1], sNot, D0[1]);
	and a33(wAnd2[1], S, D1[1]);
	or o1(F[1],wAnd1[1],wAnd2[1]);

	and a2(wAnd1[2], sNot, D0[2]);
	and a34(wAnd2[2], S, D1[2]);
	or o2(F[2],wAnd1[2],wAnd2[2]);

	and a3(wAnd1[3], sNot, D0[3]);
	and a35(wAnd2[3], S, D1[3]);
	or o3(F[3],wAnd1[3],wAnd2[3]);

	and a4(wAnd1[4], sNot, D0[4]);
	and a36(wAnd2[4], S, D1[4]);
	or o4(F[4],wAnd1[4],wAnd2[4]);

	and a5(wAnd1[5], sNot, D0[5]);
	and a37(wAnd2[5], S, D1[5]);
	or o5(F[5],wAnd1[5],wAnd2[5]);

	and a6(wAnd1[6], sNot, D0[6]);
	and a38(wAnd2[6], S, D1[6]);
	or o6(F[6],wAnd1[6],wAnd2[6]);

	and a7(wAnd1[7], sNot, D0[7]);
	and a39(wAnd2[7], S, D1[7]);
	or o7(F[7],wAnd1[7],wAnd2[7]);

	and a8(wAnd1[8], sNot, D0[8]);
	and a40(wAnd2[8], S, D1[8]);
	or o8(F[8],wAnd1[8],wAnd2[8]);

	and a9(wAnd1[9], sNot, D0[9]);
	and a41(wAnd2[9], S, D1[9]);
	or o9(F[9],wAnd1[9],wAnd2[9]);

	and a10(wAnd1[10], sNot, D0[10]);
	and a42(wAnd2[10], S, D1[10]);
	or o10(F[10],wAnd1[10],wAnd2[10]);

	and a11(wAnd1[11], sNot, D0[11]);
	and a43(wAnd2[11], S, D1[11]);
	or o11(F[11],wAnd1[11],wAnd2[11]);

	and a12(wAnd1[12], sNot, D0[12]);
	and a44(wAnd2[12], S, D1[12]);
	or o12(F[12],wAnd1[12],wAnd2[12]);

	and a13(wAnd1[13], sNot, D0[13]);
	and a45(wAnd2[13], S, D1[13]);
	or o13(F[13],wAnd1[13],wAnd2[13]);

	and a14(wAnd1[14], sNot, D0[14]);
	and a46(wAnd2[14], S, D1[14]);
	or o14(F[14],wAnd1[14],wAnd2[14]);

	and a15(wAnd1[15], sNot, D0[15]);
	and a47(wAnd2[15], S, D1[15]);
	or o15(F[15],wAnd1[15],wAnd2[15]);

	and a16(wAnd1[16], sNot, D0[16]);
	and a48(wAnd2[16], S, D1[16]);
	or o16(F[16],wAnd1[16],wAnd2[16]);

	and a17(wAnd1[17], sNot, D0[17]);
	and a49(wAnd2[17], S, D1[17]);
	or o17(F[17],wAnd1[17],wAnd2[17]);

	and a18(wAnd1[18], sNot, D0[18]);
	and a50(wAnd2[18], S, D1[18]);
	or o18(F[18],wAnd1[18],wAnd2[18]);

	and a19(wAnd1[19], sNot, D0[19]);
	and a51(wAnd2[19], S, D1[19]);
	or o19(F[19],wAnd1[19],wAnd2[19]);

	and a20(wAnd1[20], sNot, D0[20]);
	and a52(wAnd2[20], S, D1[20]);
	or o20(F[20],wAnd1[20],wAnd2[20]);

	and a21(wAnd1[21], sNot, D0[21]);
	and a53(wAnd2[21], S, D1[21]);
	or o21(F[21],wAnd1[21],wAnd2[21]);

	and a22(wAnd1[22], sNot, D0[22]);
	and a54(wAnd2[22], S, D1[22]);
	or o22(F[22],wAnd1[22],wAnd2[22]);

	and a23(wAnd1[23], sNot, D0[23]);
	and a55(wAnd2[23], S, D1[23]);
	or o23(F[23],wAnd1[23],wAnd2[23]);

	and a24(wAnd1[24], sNot, D0[24]);
	and a56(wAnd2[24], S, D1[24]);
	or o24(F[24],wAnd1[24],wAnd2[24]);

	and a25(wAnd1[25], sNot, D0[25]);
	and a57(wAnd2[25], S, D1[25]);
	or o25(F[25],wAnd1[25],wAnd2[25]);

	and a26(wAnd1[26], sNot, D0[26]);
	and a58(wAnd2[26], S, D1[26]);
	or o26(F[26],wAnd1[26],wAnd2[26]);

	and a27(wAnd1[27], sNot, D0[27]);
	and a59(wAnd2[27], S, D1[27]);
	or o27(F[27],wAnd1[27],wAnd2[27]);

	and a28(wAnd1[28], sNot, D0[28]);
	and a60(wAnd2[28], S, D1[28]);
	or o28(F[28],wAnd1[28],wAnd2[28]);

	and a29(wAnd1[29], sNot, D0[29]);
	and a61(wAnd2[29], S, D1[29]);
	or o29(F[29],wAnd1[29],wAnd2[29]);

	and a30(wAnd1[30], sNot, D0[30]);
	and a62(wAnd2[30], S, D1[30]);
	or o30(F[30],wAnd1[30],wAnd2[30]);

	and a31(wAnd1[31], sNot, D0[31]);
	and a63(wAnd2[31], S, D1[31]);
	or o31(F[31],wAnd1[31],wAnd2[31]);


endmodule