clc, clear;
f=[-3,1,1];
A=[1,-2,1;4,-1,-2];
B=[11,-3];
Aeq=[-2,0,1];
Beq=[1];
lb=zeros(3,1);
[x,fval]=linprog(f,A,B,Aeq,Beq,lb);
x,fval=-fval

