%αɫ��%
I=imread('untitled.tif'); %����
im = imgaussfilt(I,0.1); %�����˹ģ��

% im=rgb2gray(I); %���лҶȴ���
% imshow(im)
% %im=imcomplement(im);  %��ת�Ҷ�
% %imshow(im)
% rgb=gray2ind(im,255);  %α�ɴ���
% imshow(rgb)
im=rgb2ind(im,60000);
load('matlab.mat')
rgb=ind2rgb(im,mymap);
% %255, 221, 138
imshow(rgb)