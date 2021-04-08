%----The Qi attractor四维度%

clc;clear
[t,out]=ode45(@odefu,[0,5000],[-0.2,0.1,0.1,1])
%plot3(y(:,4),y(:,1),y(:,3))
temp=[out(:,3),out(:,4),out(:,2)];
%a=[sqrt(2)/2,-sqrt(2)/2,0;sqrt(2)/2,sqrt(2)/2-1,0;0,0,1];%将其线性变换,切换视角
%temp=temp*a;
x=temp(:,1)';
y=temp(:,2)';
z=temp(:,3)';
plot3(x,y,z)
% plot(t,out(:,1))
% hold on 
% plot(t,out(:,2))
function res=odefu(t,y)
    res=zeros(4,1);
    res(1)=3*(y(2)-y(1))+y(2)*y(3)*y(4);
    res(2)=(y(1)+y(2))-y(1)*y(3)*y(4);
    res(3)=-y(3)+y(1)*y(2)*y(4);
    res(4)=-10*y(4)+y(1)*y(2)*y(3);
end