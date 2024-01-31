module four_bit_cla(
input [3:0] a, b,
input carry_in,
output [3:0] sum,
output carry_out
);
	wire [3:0] g, p, c;
	wire c1, c2, c3, c_out_wire;

	// Generate (g) and Propagate (p) signals
	and g0(g[0], a[0], b[0]);
	and g1(g[1], a[1], b[1]);
	and g2(g[2], a[2], b[2]);
	and g3(g[3], a[3], b[3]);

	or p0(p[0], a[0], b[0]);
	or p1(p[1], a[1], b[1]);
	or p2(p[2], a[2], b[2]);
	or p3(p[3], a[3], b[3]);

	// overflow
	and c0(c[0], carry_in, 1'b1); // c[0] = carry_in AND 1

	and pc0(c1, p[0], c[0]);
	or c_out1(c[1], g[0], c1);

	and pc1(c2, p[1], c[1]);
	or c_out2(c[2], g[1], c2);

	and pc2(c3, p[2], c[2]);
	or c_out3(c[3], g[2], c3);

	and pc3(c_out_wire, p[3], c[3]);
	or c_out4(carry_out, g[3], c_out_wire);

	// Full adder modulas
	full_adder fa0(sum[0], , a[0], b[0], c[0]);
	full_adder fa1(sum[1], , a[1], b[1], c[1]);
	full_adder fa2(sum[2], , a[2], b[2], c[2]);
	full_adder fa3(sum[3], , a[3], b[3], c[3]);
endmodule