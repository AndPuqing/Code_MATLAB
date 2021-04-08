clc;clear
[x,y]=ode15s(@df2,[0,3000],[2,0]);
plot(x,y(:,1))


function dy=df2(x,y)
    dy=zeros(2,1);
    dy(1)=y(2);
    dy(2)=100*(1-y(1)^2)*y(2)-y(1);
end