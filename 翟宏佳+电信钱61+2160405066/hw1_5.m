%% 错切
clear;clc;
lena=imread('lena.bmp');
elain=imread('elain1.bmp');
trans=[1 1.5 0;0 1 0;0 0 1];
tform=maketform('affine',trans);
lena=imtransform(lena,tform);
elain=imtransform(elain,tform);

lena_n=imresize(lena,[2048,2048],'nearest');
lena_b=imresize(lena,[2048,2048],'bilinear');
lena_c=imresize(lena,[2048,2048],'bicubic');
figure(1);imshow(lena_n);title('lena错切近邻插值');
figure(2);imshow(lena_b);title('lena错切双线性插值');
figure(3);imshow(lena_c);title('lena错切双三次插值');

elain_n=imresize(elain,[2048,2048],'nearest');
elain_b=imresize(elain,[2048,2048],'bilinear');
elain_c=imresize(elain,[2048,2048],'bicubic');
figure(4);imshow(elain_n);title('elain错切近邻插值');
figure(5);imshow(elain_b);title('elain错切双线性插值');
figure(6);imshow(elain_c);title('elain错切双三次插值');

%% 旋转
clear;clc;
lena=imread('lena.bmp');
elain=imread('elain1.bmp');
trans=[cosd(30) -sind(30) 0;sind(30) cosd(30) 0;0 0 1];
tform=maketform('affine',trans);
lena=imtransform(lena,tform);
elain=imtransform(elain,tform);

lena_n=imresize(lena,[2048,2048],'nearest');
lena_b=imresize(lena,[2048,2048],'bilinear');
lena_c=imresize(lena,[2048,2048],'bicubic');
figure(7);imshow(lena_n);title('lena旋转近邻插值');
figure(8);imshow(lena_b);title('lena旋转双线性插值');
figure(9);imshow(lena_c);title('lena旋转双三次插值');

elain_n=imresize(elain,[2048,2048],'nearest');
elain_b=imresize(elain,[2048,2048],'bilinear');
elain_c=imresize(elain,[2048,2048],'bicubic');
figure(10);imshow(elain_n);title('elain旋转近邻插值');
figure(11);imshow(elain_b);title('elain旋转双线性插值');
figure(12);imshow(elain_c);title('elain旋转双三次插值');