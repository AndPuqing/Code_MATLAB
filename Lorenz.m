%----自编混沌模型----%
%----洛伦兹混沌方程--这是迭求解,可以用ode45求解更好,更简便%
clc,clear all
i=400000; %迭代次数
x=ones(1,i); %开辟内存空间
y=ones(size(x)); %同
z=ones(size(x)); %同
%----初始化----%
x(1)=-10;
y(1)=10;
z(1)=25;
a=10;
b=28;
c=2.6666667;
t=0.001; %迭代精度

%----迭代函数----%
for in=1:i-1 %i-1因为后面是in+1
   u=a*(y(in)-x(in));
   v=b*x(in)-y(in)-x(in)*z(in);
   w=x(in)*y(in)-c*z(in);
   x(in+1)=x(in)+u*t;
   y(in+1)=y(in)+v*t;
   z(in+1)=z(in)+w*t;
end
plot3(x,y,z)

% ode45版
% [t,y]=ode45(@odefun,[0,59],[-10,10.1,25]);
% plot3(y(:,1),y(:,2),y(:,3))
% 
% function res=odefun(t,y)
%     res=zeros(3,1);
%     res(1)=10*(y(2)-y(1));
%     res(2)=y(1)*(28-y(3))-y(2);
%     res(3)=y(1)*y(2)-(8/3)*y(3);
% end
