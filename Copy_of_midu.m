%----������scatter������ɢ���ܶ�ͼ----%
%----���plot3�����ݵ���ʾ,�����ܶ���Ϊɫ��%
temp=[x' y' z'];
%a=[sqrt(2)/2,-sqrt(2)/2,0;sqrt(2)/2,sqrt(2)/2-1,0;0,0,1];%�������Ա任,�л��ӽ�
%temp=temp*a;
x=temp(:,1)';
y=temp(:,2)';
z=temp(:,3)';
N = length(x);   %���ݳ���
c = zeros(N,1);  %�����ڴ�ռ�
max_x = ceil(max(x) - 0.5) + 1; %��ȡ�жϿռ䷶Χ
max_y = ceil(max(y) - 0.5) + 1;
step = 0.004; %���򾫶�
N_x = ceil(max_x/step); %�ܶȷ���x��
N_y = ceil(max_y/step); %�ܶȷ���y��
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
scatter(x,y,0.04,c) %��ɢ��ͼ��10ΪԲȦ�Ĵ�С��cָ��Ϊ��ɫ���ƻ� RGB ��Ԫ�顣
hold on
%colormap(jet)   %����colormap�����ı���ɫ�仯����
%colorbar   %��ʾ��ɫ��
