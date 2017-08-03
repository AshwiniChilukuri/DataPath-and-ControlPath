module dff(in,dout2,clk);
input[7:0] in;
input clk;
output[7:0] dout2;
reg[7:0] dout2;
always@ (posedge clk)
begin
dout2 <= in;
end
endmodule
