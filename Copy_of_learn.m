%¹©¸øÁ·Ï°ÓÃ%
clc,clear,close all


%scatter(x,y,1,c)

[t,y] = ode45(@ode,[0,3000],[-0.1,0.5,-0.6]);
plot3(y(:,1),y(:,2),y(:,3))
x=y(:,1)';
z=y(:,3)';
y=y(:,2)';
%plot(y(:,1),y(:,2))
hold on
% [t,y] = ode45(@ode,[0,100],[2.01,0]);
% plot(t,y(:,1))
function fun=ode(~,Y)
fun=zeros(3,1);
fun(1)=40*(Y(2)-Y(1));
fun(2)=(28-40)*Y(1)-Y(1)*Y(3)+28*Y(2);
fun(3)=Y(1)*Y(2)-3*Y(3);
end