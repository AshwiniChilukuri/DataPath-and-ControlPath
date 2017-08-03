module add(in1,in2,sum);
input[7:0] in1,in2;
output[7:0] sum;
reg[7:0] c,sum;

always@ (in1 or in2)
begin
sum[0]=in1[0]^in2[0];
c[0]=(in1[0]&in2[0]);
sum[1]=in1[1]^in2[1]^c[0];
c[1]=(in1[1]&in2[1])|(in2[1]&c[0])|(c[0]&in1[1]);
sum[2]=in1[2]^in2[2]^c[1];
c[2]=(in1[2]&in2[2])|(in2[2]&c[1])|(c[1]&in1[2]);
sum[3]=in1[3]^in2[3]^c[2];
c[3]=(in1[3]&in2[3])|(in2[3]&c[2])|(c[2]&in1[3]);
sum[4]=in1[4]^in2[4]^c[3];
c[4]=(in1[4]&in2[4])|(in2[4]&c[3])|(c[3]&in1[4]);
sum[5]=in1[5]^in2[5]^c[4];
c[5]=(in1[5]&in2[5])|(in2[5]&c[4])|(c[4]&in1[5]);
sum[6]=in1[6]^in2[6]^c[5];
c[6]=(in1[6]&in2[6])|(in2[6]&c[5])|(c[5]&in1[6]);
sum[7]=in1[7]^in2[7]^c[6];
c[7]=(in1[7]&in2[7])|(in2[7]&c[6])|(c[6]&in1[7]);

if(c[7]!=c[6]) //overflow condition
sum = 8'b00000000;

end
endmodule
