clc,clear

A=[-1,0,0;-1,-1,0];
b=-[40;100];
Aeq=ones(1,3);
beq=180;
lb=zeros(3,1);

[x,fval]=fmincon('exer_fun_3_1',rand(3,1),A,b,Aeq,beq,lb,[])

