function [img]=median_filter(imag,m)
%-------------%
%��ֵ�˲�
%���룺
%imag��ԭͼ
%m:ģ���С

%����˲����ͼ��
%-------------%
n=m;
[height, width]=size(image);
x1=double(imag);
x2=x1;
for i=1:height-n+1
    for j=1:width-n+1
        mb=x1(i:(i+n-1),j:(j+n-1));
        mb=mb(:);
        mm=median(mb);
        x2(i+(n-1)/2,j+(n-1)/2)=mm;
        
    end
end
img=uint8(x2);
end