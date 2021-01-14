%伪色彩%
I=imread('untitled.tif'); %载入
im = imgaussfilt(I,0.1); %对其高斯模糊

% im=rgb2gray(I); %进行灰度处理
% imshow(im)
% %im=imcomplement(im);  %反转灰度
% %imshow(im)
% rgb=gray2ind(im,255);  %伪采处理
% imshow(rgb)
im=rgb2ind(im,60000);
load('matlab.mat')
rgb=ind2rgb(im,mymap);
% %255, 221, 138
imshow(rgb)