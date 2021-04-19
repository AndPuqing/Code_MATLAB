clc;clear
t=0:0.01:2.5;

c=0.1;

out = 100.*(2./(t.*(c+1))).*((bessely(1,t./(c-1)).*besseli(1,c.*t./(c-1))-besseli(1,t./(c-1)).*bessely(1,c.*t./(c-1)))./(bessely(1,c.*t./(c-1)).*besseli(0,t./(c-1))+bessely(0,t./(c-1)).*besseli(1,c.*t./(c-1))));
plot(t,out,'linewidth',1.5)
hold on

c=0.20;
out = 100.*(2./(t.*(c+1))).*((bessely(1,t./(c-1)).*besseli(1,c.*t./(c-1))-besseli(1,t./(c-1)).*bessely(1,c.*t./(c-1)))./(bessely(1,c.*t./(c-1)).*besseli(0,t./(c-1))+bessely(0,t./(c-1)).*besseli(1,c.*t./(c-1))));
plot(t,out,'linewidth',1.5)
hold on
c=0.25;
out = 100.*(2./(t.*(c+1))).*((bessely(1,t./(c-1)).*besseli(1,c.*t./(c-1))-besseli(1,t./(c-1)).*bessely(1,c.*t./(c-1)))./(bessely(1,c.*t./(c-1)).*besseli(0,t./(c-1))+bessely(0,t./(c-1)).*besseli(1,c.*t./(c-1))));

plot(t,out,'black','linewidth',1.5) 
hold on
c=0.33;
out = 100.*(2./(t.*(c+1))).*((bessely(1,t./(c-1)).*besseli(1,c.*t./(c-1))-besseli(1,t./(c-1)).*bessely(1,c.*t./(c-1)))./(bessely(1,c.*t./(c-1)).*besseli(0,t./(c-1))+bessely(0,t./(c-1)).*besseli(1,c.*t./(c-1))));
plot(t,out,'r','linewidth',1.5)