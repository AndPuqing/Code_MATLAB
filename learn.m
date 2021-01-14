%写的关于cd4,hiv含量变化分析% 
clc,clear,close all
load('hivdata.mat');

%---cd4(60-30)---%
data=zeros(1,2); %开辟空间
for i=1:1:45
   a=find(hivdata(:,1)==cd460(i));
   weeks=hivdata(a,2);
   cd4=hivdata(a,3);
   temp=[weeks,cd4];
   data=[data;temp];
end
data(1,:)=[];
x=data(100:2:200,1);
y=data(100:2:200,2);
f=coeffvalues(fit(x,y,'poly4'));
t=0:0.001:50;
y=f(1)*t.^4+f(2)*t.^3+f(3)*t.^2+f(4)*t+f(5);
plot(t,y,'linewidth',1.5)
hold on

%---cd4(30-60)---%
clear data x y a weeks cd4 temp f;
data=zeros(1,2);
for i=1:1:100
   a=find(hivdata(:,1)==cd430(i));
   weeks=hivdata(a,2);
   cd4=hivdata(a,3);
   temp=[weeks,cd4];
   data=[data;temp];
end
data(1,:)=[];
x=data(100:2:200,1);
y=data(100:2:200,2);
f=coeffvalues(fit(x,y,'poly4'));
t=0:0.001:50;
y=f(1)*t.^4+f(2)*t.^3+f(3)*t.^2+f(4)*t+f(5);
plot(t,y,'linewidth',1.5)
hold on

%---cd4(60-90)---%
clear data x y a weeks cd4 temp f;
data=zeros(1,2);
for i=1:1:52
   a=find(hivdata(:,1)==cd490(i));
   weeks=hivdata(a,2);
   cd4=hivdata(a,3);
   temp=[weeks,cd4];
   data=[data;temp];
end
data(1,:)=[];
x=data(100:2:200,1);
y=data(100:2:200,2);
f=coeffvalues(fit(x,y,'poly4'));
t=0:0.001:50;
y=f(1)*t.^4+f(2)*t.^3+f(3)*t.^2+f(4)*t+f(5);
plot(t,y,'linewidth',1.5)
hold on

%---cd4(90-120)---%
clear data x y a weeks cd4 temp f;
data=zeros(1,2);
for i=1:1:36
   a=find(hivdata(:,1)==cd4120(i));
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
plot(t,y,'linewidth',1.5)
hold on

%---cd4(120-150)---%
clear data x y a weeks cd4 temp f;
data=zeros(1,2);
for i=1:1:36
   a=find(hivdata(:,1)==cd4150(i));
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
plot(t,y,'linewidth',1.5)
hold on

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
plot(t,y,'linewidth',1.5)
hold on

%---cd4(180-210)---%
clear data x y a weeks cd4 temp f;
data=zeros(1,2);
for i=1:1:23
   a=find(hivdata(:,1)==cd4210(i));
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
plot(t,y,'linewidth',1.5)
hold on

%---cd4(210-240)---%
clear data x y a weeks cd4 temp f;
data=zeros(1,2);
for i=1:1:5
   a=find(hivdata(:,1)==cd4240(i));
   weeks=hivdata(a,2);
   cd4=hivdata(a,3);
   temp=[weeks,cd4];
   data=[data;temp];
end
data(1,:)=[];
x=data(1:1:19,1);
y=data(1:1:19,2);
f=coeffvalues(fit(x,y,'poly4'));
t=0:0.001:50;
y=f(1)*t.^4+f(2)*t.^3+f(3)*t.^2+f(4)*t+f(5);
plot(t,y,'linewidth',1.5),grid
hold on