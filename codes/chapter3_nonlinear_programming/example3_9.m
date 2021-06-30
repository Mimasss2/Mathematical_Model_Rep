clc,clear
H=[4,-4;-4,8];
f=[-6;-3];
A=[1,1;4,1];
b=[3;9];
lb=zeros(2,1);
[x,fval]=quadprog(H,f,A,b,[],[],lb,[])