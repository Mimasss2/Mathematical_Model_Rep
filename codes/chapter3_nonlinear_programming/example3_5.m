clc,clear
options=optimset('GradObj','on');
[x,y]=fminsearch('fun3_5',rand(1,2),options)
[x,y]=fminunc('fun3_5',rand(1,2),options)