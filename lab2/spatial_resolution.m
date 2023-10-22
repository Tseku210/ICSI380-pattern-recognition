clc
clear all
close all

img = imread('images/skull.tif');

subplot(2, 4, 1);
imshow(img);

title('Original Image');

% Display image from 7-bit to 1-bit
for i = 1:6
  img_bit = floor(img / (2^(i))) * (2^(i));
  subplot(2, 4, i+1);
  imshow(img_bit);
  title(sprintf('%d-bit', 8-i));
end

% 1-bit thresholding
img_thresholded = img > 127;
subplot(2, 4, 8);
imshow(img_thresholded);
title('1-bit');
