module sub(in1,in2,sub);
input[7:0] in1,in2;
output[7:0] sub;
reg[7:0] c;
reg[7:0] sub;
always@ (in1 or in2)
begin
sub[0]=in1[0]^in2[0];
c[0]=(~in1[0]&in2[0]);
sub[1]=in1[1]^in2[1]^c[0];
c[1]=(((~in1[1])&in2[1])|(in2[1]&c[0])|((~in1[1])&c[0]));
sub[2]=in1[2]^in2[2]^c[1];
c[2]=(((~in1[2])&in2[2])|(in2[2]&c[1])|((~in1[2])&c[1]));
sub[3]=in1[3]^in2[3]^c[2];
c[3]=(((~in1[3])&in2[3])|(in2[3]&c[2])|((~in1[3])&c[2]));
sub[4]=in1[4]^in2[4]^c[3];
c[4]=(((~in1[4])&in2[4])|(in2[4]&c[3])|((~in1[4])&c[3]));
sub[5]=in1[5]^in2[5]^c[4];
c[5]=(((~in1[5])&in2[5])|(in2[5]&c[4])|((~in1[5])&c[4]));
sub[6]=in1[6]^in2[6]^c[5];
c[6]=(((~in1[6])&in2[6])|(in2[6]&c[5])|((~in1[6])&c[5]));
sub[7]=in1[7]^in2[7]^c[6];
c[7]=(((~in1[7])&in2[7])|(in2[7]&c[6])|((~in1[7])&c[6]));

if(c[7]!=c[6]) //overflow condition
sub = 8'b00000000;
end
endmodule
