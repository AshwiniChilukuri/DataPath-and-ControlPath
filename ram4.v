module ram4(in,out,clk,web,add);
input clk,web;
input[7:0] in;
output[7:0] out;
input[1:0] add;
reg[7:0]RAM[3:0];
reg[7:0] out;
always@ (posedge clk)
begin
if(web)
RAM[add]<=in;
else
out <= RAM[add];
end
endmodule
