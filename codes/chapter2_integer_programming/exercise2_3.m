clc,clear
c=[4,2,3,4;6,4,5,5;7,6,7,6;7,8,8,6;7,9,8,6;7,10,8,6];
c=-c(:);
A=zeros(4,24);
Aeq=zeros(6,24);
for i=1:4
    A(i,(i-1)*6+1:6*i)=1;
end
for i=1:6
    Aeq(i,i:6:24)=1;
end
beq=ones(6,1);
b=ones(4,1);
A=-A;
b=-b;
intcon=1:24;
lb=zeros(24,1);
ub=ones(24,1);
[x,fval]=intlinprog(c,intcon,A,b,Aeq,beq,lb,ub);
x=reshape(x,[6,4])
fval=-fval
