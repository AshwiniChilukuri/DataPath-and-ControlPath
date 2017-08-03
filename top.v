module top(reset,clk,dataina);
input reset,clk;
input[7:0] dataina;
wire inca,incb,wea,web,sign;
wire[2:0] adda;
wire[1:0] addb;
wire[7:0] dout1,dout2,subout,addout,datainb;
wire[7:0] out;


controller 	controller(.inca(inca),.incb(incb),.wea(wea),.web(web),.reset(reset),.clk(clk));
counta		counta(.inca(inca),.reset(reset),.clk(clk),.adda(adda));
ram8		ram8(.in(dataina),.out(dout1),.clk(clk),.wea(wea),.add(adda),.reset(reset));
dff		dff(.in(dout1),.dout2(dout2),.clk(clk));
sub		sub(.in1(dout2),.in2(dout1),.sub(subout));
add		add(.in1(dout2),.in2(dout1),.sum(addout));
comp		comp(.in1(dout2),.in2(dout1),.sign(sign));
mux2x1		mux2x1(.in0(subout),.in1(addout),.sel(sign),.out(datainb));
countb		countb(.incb(incb),.reset(reset),.clk(clk),.addb(addb));
ram4		ram4(.in(datainb),.out(out),.clk(clk),.web(web),.add(addb));
endmodule
