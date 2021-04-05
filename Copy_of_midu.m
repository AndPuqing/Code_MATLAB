%----这是用scatter法绘制散点密度图----%
%----完成plot3后数据的显示,将点密度作为色彩%
temp=[x' y' z'];
%a=[sqrt(2)/2,-sqrt(2)/2,0;sqrt(2)/2,sqrt(2)/2-1,0;0,0,1];%将其线性变换,切换视角
%temp=temp*a;
x=temp(:,1)';
y=temp(:,2)';
z=temp(:,3)';
N = length(x);   %数据长度
c = zeros(N,1);  %开辟内存空间
max_x = ceil(max(x) - 0.5) + 1; %读取判断空间范围
max_y = ceil(max(y) - 0.5) + 1;
step = 0.004; %区域精度
N_x = ceil(max_x/step); %密度方格x量
N_y = ceil(max_y/step); %密度方格y量
color_Map=zeros(N_x,N_y); 
for j=1:N
    color_Map_x=ceil(abs(x(j)/step));
    color_Map_y=ceil(abs(y(j)/step));
    color_Map(color_Map_x,color_Map_y)=color_Map(color_Map_x,color_Map_y)+3;
end
for j=1:N
    color_Map_x=ceil(abs(x(j)/step));
    color_Map_y=ceil(abs(y(j)/step));
    c(j)=color_Map(color_Map_x,color_Map_y);
end
whitebg('k');
scatter(x,y,0.04,c) %画散点图，10为圆圈的大小；c指定为颜色名称或 RGB 三元组。
hold on
%colormap(jet)   %查阅colormap函数改变颜色变化趋势
%colorbar   %显示颜色条
