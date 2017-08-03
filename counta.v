module counta(inca,reset,clk,adda);
input inca,reset,clk;
output[2:0] adda;
reg[2:0] adda;
always@ (posedge clk)
begin
if (reset)
adda <= 3'b000;
else if(inca)
adda <= adda+1;
end
endmodule
