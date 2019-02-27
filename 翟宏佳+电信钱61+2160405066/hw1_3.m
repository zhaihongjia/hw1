clear;clc;
img=imread('lena.bmp');
[x,y]=size(img);
img=255*im2double(img);
mena=0.0;
for i=1:x
    for j=1:y
        mena=mena+img(i,j);
    end
end
mena=double(mena/(512*512));
std=0.0;
for i=1:x
    for j=1:y
       std=std+(img(i,j)-mena)*(img(i,j)-mena);
    end
end
std=std/(512*512);
fprintf('遍历像素计算均值：%f\n',mena);
fprintf('遍历像素计算方差：%f\n',std);
fprintf('MATLAB函数计算均值：%f',mean2(img));
fprintf('\nMATLAB函数计算方差：%f\n',std2(img)*std2(img));
