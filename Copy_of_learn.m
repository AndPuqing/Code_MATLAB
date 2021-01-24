%¹©¸øÁ·Ï°ÓÃ%
clc,clear,close all

%scatter(x,y,1,c)

[t,y] = ode45(@ode,[0,30],[1.01,0,25]);
plot(t,y(:,1))
[t,y] = ode45(@ode,[0,30],[1.01,0.01,25]);
plot(t,y(:,1))

function fun=ode(t,Y)
fun=zeros(3,1);
fun(1)=10*(Y(2)-Y(1));
fun(2)=Y(1)*(28-Y(3))-Y(2);
fun(3)=Y(1)*Y(2)-8/3*Y(3);

end