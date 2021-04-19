clc;clear
global w;
global n;
global A;
global h;
global k;
global ca;
global cb;
global ma;
global mb;
global d;
global B;
w=500;
n=422;
A=12.5*pi;
B=10.1*pi;
h=200;
k=20;
ca=460;
cb=460;
ma=8;
mb=17000;
d=0.1;
% 
% [t,Q]=ode45(@wf,[0,10000],[0,0]);
% plot(t,Q(:,1)/(ca*ma*n)+20)
% hold on 
% plot(t,Q(:,2)/(cb*mb)+20)



[t,Q]=ode45(@wf,[0,15000],[0,0]);
plot(t,Q(:,1)/(ca*ma*n)+20)
max(Q(:,1)/(ca*ma*n)+20)
hold on
plot(t,Q(:,2)/(cb*mb)+20)

function dy=wf(t,Q)
    global w;
    global n;
    global A;
    global h;
    global ca;
    global cb;
    global ma;
    global mb;
    global k;
    global B;
    global d;
    dy=zeros(2,1);
    dy(1)=w*n-(k*B/d)*((Q(1)/(ca*ma*n))-(Q(2)/(cb*mb)));
    dy(2)=(k*B/d)*((Q(1)/(ca*ma*n))-(Q(2)/(cb*mb)))-A*h*(Q(2)/(cb*mb));
end
