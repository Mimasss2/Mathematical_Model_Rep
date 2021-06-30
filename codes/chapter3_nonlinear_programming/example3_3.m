clc,clear
syms x y
f=x^3-y^3+3*x^2+3*y^2-9*x;
df=jacobian(f);
d2f=jacobian(df);
[xx,yy]=solve(df);
xx=double(xx);
yy=double(yy);
for i=1:length(xx)
    a=subs(d2f,{x,y},{xx(i),yy(i)});
    b=eig(a);
    f2=subs(f,{x,y},{xx(i),yy(i)});
    f2=double(f2);
    if all(b>0)
        fprintf('(%f,%f)是极小值点，对应的极小值为%f\n',xx(i),yy(i),f2);
    elseif all (b<0)
        fprintf('(%f,%f)是极大值点，对应的极大值为%f\n',xx(i),yy(i),f2);
    elseif any(b<0) & any (b>0)
        fprintf('(%f,%f)不是极值点\n',xx(i),yy(i));
    else
        fprintf('(%f,%f)的性质无法确定\n',xx(i),yy(i)); 
    end
end

            
    

