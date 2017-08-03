module ram8(in,out,clk,wea,add,reset);
input reset;
input clk,wea;
input[7:0] in;
output[7:0] out;
input[2:0] add;
reg[7:0]RAM[7:0];
reg[7:0] out;
always@ (posedge clk)
begin
if(!reset)
begin
if(wea)
RAM[add]<=in;	
else
out<=RAM[add];
end
end
endmodule
