module countb(incb,reset,clk,addb);
input incb,reset,clk;
output[1:0] addb;
reg[1:0] addb;
always@ (posedge clk)
begin
if (reset)
addb <= 2'b00;
else if(incb)
addb <= addb+1;
end
endmodule
