%SALT PEPPER AND GAUSSIAN REPAIR

close all
clear all
clc
%%%%
img = imread('saltpepper.jpg');
subplot(2,2,1);
imshow(img);
%%%%
imgfiltered = img;
for c = 1 : 3
    imgfiltered(:,:,c) = medfilt2(img(:,:,c), [6,4]);
end
subplot(2,2,2);
imshow(imgfiltered);
%%%%
%%%%
img2 = imread('gaussiannoise.jpg');
subplot(2,2,3);
imshow(img2);
%%%%
imgfiltered2 = img2;
for c = 1 : 3
    imgfiltered2(:,:,c) = medfilt2(img2(:,:,c),[3,4]);
end
subplot(2,2,4)
imshow(imgfiltered2);
%%%%

%This Program is Originaly Developed by Yosua Christianov. Any use of the
%%codes in this program or the images are permited and code lisence : CC
%%%https://creativecommons.org/licenses/by/3.0/deed.en_US
%%%%This Program is already submited to https://github.com/YCRZ