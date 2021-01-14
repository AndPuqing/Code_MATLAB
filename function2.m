%----�Ա����ģ��----%
clc,clear all
i=500000; %��������
x=ones(1,i); %�����ڴ�ռ�
y=ones(size(x)); %ͬ
z=ones(size(x)); %ͬ

%----��ʼ��----%
x(1)=0.1;
y(1)=0.3;
z(1)=-0.6;
a=3.000000;
b=1.000000;
c=2.000000;
d=0.500000;
t=0.001000;

%----��������----%
for in=1:i-1 %i-1��Ϊ������in+1
   l=sqrt(x(in)^2+y(in)^2);
   if l<0.01
       x(in)=x(in)/l;
   else
        x(in)=x(in);
   end
   if l<0.01
       y(in)=y(in)/l;
   else
        y(in)=y(in);
   end
   f=c*x(in)+0.5*(d-c)*(abs(x(in)+1)-abs(x(in)-1));
   u=a*(y(in)-x(in)-f);
   v=x(in)-y(in)+z(in);
   w=-b*y(in);
   x(in+1)=x(in)+u*t;
   y(in+1)=y(in)+v*t;
   z(in+1)=z(in)+w*t;
end
plot3(x,y,z)
y=z;