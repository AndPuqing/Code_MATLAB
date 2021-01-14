%–––«‘À∂Ø%
clc,clear all
t=365;
dt=1/300;

m1=20;
m2=20;
v1=[1;-2];
x1=[1;1];

v2=[-1;1];
x2=[0;0];
G=1;
for i=1:1000
    pause(0.05);
    plot(x1(1,1),x1(2,1),'r--o');
    hold on
    plot(x2(1,1),x2(2,1),'b--o');
    hold on
    r=sqrt(sum((x1-x2).^2));
    a1=m2.*(x2-x1)./r.^3;
    a2=m1.*(x1-x2)./r.^3;
    v1=v1+a1.*dt;
    v2=v2+a2.*dt;
    x1=x1+(1/2).*a1.*dt.^2+v1.*dt;
    x2=x2+(1/2).*a2.*dt.^2+v2.*dt;
end