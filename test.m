%ª≠ªÏ„ÁÕº
clc,clear
dt = 0.001;
t = 0:0.001:100;
x = zeros(3,length(t));

p = 10;
r = 28;
b = 8/3;

x(:,1) = [-8; 8; r-1];
for tn = 1:1:length(t)-1
    k1 = Lorenz( x(:,tn) , p, r, b);
    k2 = Lorenz( x(:,tn)+dt*k1/2 , p, r, b);
    k3 = Lorenz( x(:,tn)+dt*k2/2 , p, r, b);
    k4 = Lorenz( x(:,tn)+dt*k3, p, r, b);
    x(:,tn+1) = x(:,tn) + dt/6*(k1+2*k2+2*k3+k4);
end

plot3(x(1,:),x(2,:),x(3,:),'-');
%mesh(x(1,:),x(2,:),x);
box on;
grid on;