%----������scatter������ɢ���ܶ�ͼ----%
N = length(x);   %���ݳ���
c = zeros(N,1);  %�����ڴ�ռ�
max_x = ceil(max(x) - 0.5) + 1; %��ȡ�жϿռ䷶Χ
max_y = ceil(max(y) - 0.5) + 1;
step = 0.06; %���򾫶�
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
