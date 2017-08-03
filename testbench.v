`timescale 10ns/10ns
module testbench();
reg[7:0] dataina;
reg clk,reset;
top top1(.reset(reset),.clk(clk),.dataina(dataina));
always
begin
#5; clk=~clk;
end
initial
begin
clk=1;
reset=1;
@(negedge clk)
begin
#20; reset=0;
end
@(negedge clk)
begin
#10 dataina=-127;
#10 dataina=-127;
#10 dataina=30;
#10 dataina=0;
#10 dataina=1;
#10 dataina=2;
#10 dataina=3;
#10 dataina=4;
#280
$stop;
end
end

endmodule
