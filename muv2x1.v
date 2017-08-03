module mux2x1(in0,in1,sel,out);
input[7:0] in0,in1;
input sel;
output[7:0] out;
reg[7:0] out;
always@ (in0,in1,sel)
begin
assign out=(sel==0)?in0:in1;
end
endmodule
