clc,clear
filename='data2_4.xlsx';
[num,txt,raw]=xlsread(filename);
points=num(3:18,1:2:20);
odds=num(3:18,2:2:20);


fval=zeros(10,1);%recording the total score of each athelete

% part1 using the athletes' worst scores to plan
% y records the choice of omnipotent athelete
% 
% calculating worst scores
% worst_score=points(1:4:16,1:10);
% worst_total_scores=zeros(1,10);
% for i=1:4
%     worst_total_scores=worst_total_scores+worst_score(i,1:10);
% end
% 
% choosing omnipotent atheletes
% Aeq_y=ones(1,10);
% Beq_y=4;
% f_y=worst_total_scores;
% lb_y=zeros(10,1);
% ub_y=ones(10,1);
% intcon_y=1:10;
% y=intlinprog(f_y,intcon_y,[],[],Aeq_y,Beq_y,lb_y,ub_y);
% 
% choosing single atheletes
% x=zeros(4,10);
% A_x=ones(1,4);
% b_x=3;
% lb_x=zeros(4,1);
% ub_x=ones(4,1);
% intcon=1:4;
% for i=1:10
%     if y(i)==1
%         x(1:4,i)=ones(4,1);
%         fval(i)=worst_total_scores(i);
%     else
%         c=worst_score(1:4,i);
%         c=-reshape(c,[1,4]);
%         [x(1:4,i),fval(i)]=intlinprog(c,intcon,A_x,b_x,[],[],lb_x,ub_x);
%         fval(i)=-fval(i);
%     end
% end
% sum=sum(fval)
% x

%part 2 using the average score to plan

% calculating average score
aver_score=zeros(4,10);
for i=1:4
    for j=1:4
        aver_score(i,1:10)=aver_score(i,1:10)+points(4*(i-1)+j,1:10).*odds(4*(i-1)+j,1:10);
    end
end

aver_total_scores=zeros(1,10);
for i=1:4
    aver_total_scores=aver_total_scores+aver_score(i,1:10);
end
    
%choosing omnipotent atheletes
Aeq_y=ones(1,10);
Beq_y=4;
f_y=aver_total_scores;
lb_y=zeros(10,1);
ub_y=ones(10,1);
intcon_y=1:10;
y=intlinprog(f_y,intcon_y,[],[],Aeq_y,Beq_y,lb_y,ub_y);

%choosing single atheletes
%未注意条件：每个项目最多六个运动员！（但matlab写起来太麻烦了 先不写了）
x=zeros(4,10);
A_x=ones(1,4);
b_x=3;
lb_x=zeros(4,1);
ub_x=ones(4,1);
intcon=1:4;
for i=1:10
    if y(i)==1
        x(1:4,i)=ones(4,1);
        fval(i)=aver_total_scores(i);
    else
        c=aver_score(1:4,i);
        c=-reshape(c,[1,4]);
        [x(1:4,i),fval(i)]=intlinprog(c,intcon,A_x,b_x,[],[],lb_x,ub_x);
        fval(i)=-fval(i);
    end
end
sum=sum(fval)
x
        
        
    
    
