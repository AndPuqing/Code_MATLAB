%中值平滑
[file,path]=uigetfile({'*.jpg';'*.bmp';'*.gif';'*.png'},'选择图片');
A=imread([path,file]);
D=rgb2gray(A);
C=median_filter(A,11);
imshow(C);