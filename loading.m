%��ֵƽ��
[file,path]=uigetfile({'*.jpg';'*.bmp';'*.gif';'*.png'},'ѡ��ͼƬ');
A=imread([path,file]);
D=rgb2gray(A);
C=median_filter(A,11);
imshow(C);