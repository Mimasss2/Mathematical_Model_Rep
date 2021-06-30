clc,clear 
f=@(x) [x(1)^2+x(2)-6,x(2)^2+x(1)-6];
x0=fsolve(f,[7,7])