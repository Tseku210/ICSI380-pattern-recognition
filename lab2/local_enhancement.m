clc
clear all
close all

img = imread('ch3_images/Fig0326(a)(embedded_square_noisy_512).tiff');

if size(img, 3) == 3
    img = rgb2gray(img);
end

subplot(1, 3, 1);
imshow(img);
title('Original Image');

img_en = histeq(img);
subplot(1, 3, 2);
imshow(img_en);
title('Global histogram equalization');

mask = 1/9 * ones(3, 3);
b = double(img);
for i=2:size(img,1)-2
  for j=2:size(img,2)-2
    b(i,j) = sum(sum(double(img(i-1:i+1, j-1:j+1)).*mask));
  endfor
end

subplot(1, 3, 3);
imshow(b);
title('Local enhancement');

