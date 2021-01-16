clc,clear,close all
load('hivdata.mat');


%---cd4(150-180)---%
clear data x y a weeks cd4 temp f;
data=zeros(1,2);
for i=1:1:30
   a=find(hivdata(:,1)==cd4180(i));
   weeks=hivdata(a,2);
   cd4=hivdata(a,3);
   temp=[weeks,cd4];
   data=[data;temp];
end
data(1,:)=[];
x=data(1:2:100,1);
y=data(1:2:100,2);
f=coeffvalues(fit(x,y,'poly4'));
t=0:0.001:50;
y=f(1)*t.^4+f(2)*t.^3+f(3)*t.^2+f(4)*t+f(5);
plot(t,y,'b','linewidth',1)
hold on