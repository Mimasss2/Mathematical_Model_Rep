clc,clear
x0=[150 85 150 145 130 0];
y0=[140 85 155 50 150 0];
xy0=[x0;y0];
d0=dist(xy0)
d1=dist(x0,y0)
d0(find(d0==0))=inf;
d0