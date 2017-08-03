module controller(inca,incb,wea,web,reset,clk);
input reset,clk;
output wea,web,inca,incb;
wire rst;
reg[4:0] c;
always@ (posedge clk)
begin
c<=c+1;
if(reset | reset)
c<=5'b00000;
//if(rst)
//c<=5'bx;
end
assign wea=(c>0)?(c<9)?1:0:0;
assign inca=(c>0)?(c<17)?1:0:0;
assign web=((~|(c^5'b01101))|(~|(c^5'b01111))|(~|(c^5'b10001))|(~|(c^5'b01011)));//|(~|(c^5'b10011)));
assign incb=((~|(c^5'b01110))|(~|(c^5'b10000))|(~|(c^5'b10010))|(~|(c^5'b01100)));//|(~|(c^5'b10100)));
assign rst=(~|(c^5'b10011));
endmodule
