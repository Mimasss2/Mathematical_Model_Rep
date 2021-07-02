clc,clear
a=zeros(11);
%data input
a(1,[2,3,4])=[2,8,1];
a(2,[3,5])=[6,1];
a(3,[4,5,6,7])=[7,5,1,2];
a(4,7)=9;
a(5,[6,8,9])=[3,2,9];
a(6,[7,9])=[4,6];
a(7,[9,10])=[3,1];
a(8,[9,11])=[7,9];
a(9,[10,11])=[1,2];
a(10,11)=4;
%end data

a=a';
[i,j,v]=find(a);
b=sparse(i,j,v,11,11);
[x,y,z]=graphshortestpath(b,1,11,'Directed',false);
IDs={'1','2','3','4','5','6','7','8','9','10','11'};
c=biograph(b,IDs);
h=view(c);
edges=getedgesbynodeid(h);
set(edges,'LineColor',[1,0,0]);
set(edges,'LineWidth',1.5);



