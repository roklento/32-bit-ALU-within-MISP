module myMod(
input clk,    
input reset,    
input start,    
input [31:0] A, 
input [31:0] B, 
output [31:0] result, 
output done           
);

wire ld_temp, sub, comp;

mod_cu control_unit(
    .clk(clk),
    .reset(reset),
    .start(start),
    .comp(comp),
    .ld_temp(ld_temp),
    .sub(sub),
    .done(done)
);

mod_dp datapath(
    .clk(clk),
    .reset(reset),
    .A(A),
    .B(B),
    .ld_temp(ld_temp),
    .sub(sub),
    .TEMP(result),
    .comp(comp)
);

endmodule
