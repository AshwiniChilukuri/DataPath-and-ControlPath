module comp(in1,in2,sign);
input[7:0] in1,in2;
output sign;
wire [7:0]i;
assign i=in1-in2;
reg sign;
always@ (in1 or in2)
begin
if(i[7]==0)	//if sign bit(MSB)==0 +ve else -ve
assign sign=1;  //goto add
else
assign sign=0; //goto sub
end
endmodule
