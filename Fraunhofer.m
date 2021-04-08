%Fraunhofer Diffraction of a Round Hole
%弗朗和费衍射模拟Matlab源代码
%rewrite by dynamic
%all rights reserved by www.matlabsky.cn
%2008.12.3

close all 
figure('numbertitle','off','name','弗朗和费衍射模拟--by Matlabsky','toolbar','none','position',[217 266 694 244]); 
axes('position',[0.05,0.08,0.6,0.8]);hold on; 
title('Fraunhofer Diffraction of a Round Hole',... 
   'fontsize',14) 
set(gcf,'doublebuffer','on'); 
axis([-4,12,-5,5]); 
rectangle('position',[0,1,0.2,3],'FaceColor',[0.1,0.3,0.4]); 
rectangle('position',[0,-4,0.2,3],'FaceColor',[0.1,0.3,0.4]); 
rectangle('position',[3.8,-4,0.4,8],'FaceColor',... 
   [0.4,0.3,0.4],'Curvature',[1,1]); 
rectangle('position',[11,-5,0.4,10],'FaceColor',[0.1,0.3,0.4]); 
h1=plot([-4,-4],[-0.7,-0.7]); 
h2=plot([-4,-4],[0,0]); 
h3=plot([-4,-4],[0.7,0.7]); 
for k=-4:.1:0; 
   pause(0.05); 
   try
       set([h1,h2,h3],'xdata',[-4,k]); 
   catch
       return
   end
end 
y=-4:.1:4; 
a=linspace(-atan(4/11),atan(4/11),length(y)); 
a=10*sin(a); 
II=abs(sinc(a)).^2*6; 
x=11-II; 
plot(x,y,'r') 
K=find(diff(sign(diff(II)))==-2)+1; 
yyN=y(K); 
P=zeros(3,5); yN=[-0.7,0,0.7];H=P; 
for m=1:3; 
   for n=1:5; 
       p=polyfit([0,11],[yN(m),yyN(n)],1); 
       P(m,n)=complex(p(1),p(2)); 
       H(m,n)=plot(0,yN(m)); 
   end 
end 
for Q=0:.1:11; 
   pause(0.05) 
   for w=1:15; 
       [m,n]=ind2sub([3,5],w); 
       Y=polyval([real(P(w)),imag(P(w))],Q); 
       try
           set(H(w),'xdata',[0,Q],'ydata',[yN(m),Y]); 
       catch
           return
       end
   end 
end 
axes('position',[0.65,0.08,0.3,0.8]) 
a=linspace(-atan(4/11),atan(4/11),300); 
[X,Y]=meshgrid(a); 
r=sqrt(X.^2+Y.^2); 
R=10*sin(r); 
II=abs(sinc(R)).^2*6; 
imshow(II);