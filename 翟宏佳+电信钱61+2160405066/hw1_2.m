clear;clc;
img8=imread('lena.bmp');
figure(1);imshow(img8);title('8bit');
[wid,hei]=size(img8);
img7=zeros(wid,hei);% 7bitͼ
img6=zeros(wid,hei);% 6bitͼ
img5=zeros(wid,hei);% 5bitͼ
img4=zeros(wid,hei);% 4bitͼ
img3=zeros(wid,hei);% 3bitͼ
img2=zeros(wid,hei);% 3bitͼ
img1=zeros(wid,hei);% 2bitͼ
for i=1:wid
    for j=1:hei
        img7(i,j)=floor(img8(i,j)/2);
        img6(i,j)=floor(img7(i,j)/2);
        img5(i,j)=floor(img6(i,j)/2);
        img4(i,j)=floor(img5(i,j)/2);
        img3(i,j)=floor(img4(i,j)/2);
        img2(i,j)=floor(img3(i,j)/2);
        img1(i,j)=floor(img2(i,j)/2);
    end
end
figure(2);imshow(img7,[0,127]);title('7bit');
figure(3);imshow(img6,[0,63]);title('6bit');
figure(4);imshow(img5,[0,31]);title('5bit');
figure(5);imshow(img4,[0,15]);title('4bit');
figure(6);imshow(img3,[0,7]);title('3bit');
figure(7);imshow(img2,[0,3]);title('2bit');
figure(8);imshow(img1,[0,1]);title('1bit');
