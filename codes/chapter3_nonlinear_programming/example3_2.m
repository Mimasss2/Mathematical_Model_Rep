clc,clear
options = optimoptions('fmincon','Display','iter','Algorithm','sqp'); 
[x,y]=fmincon('fun3_2_1',rand(3,1),[],[],[],[],zeros(3,1),[],'fun3_2_2',options)