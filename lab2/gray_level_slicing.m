clc
clear all
close all

img = imread('ch3_images/Fig0312(a)(kidney).tif');

[m, n] = size(img);
img_no_bg = zeros(m, n);

a = 150;
b = 255;

for i = 1:m
  for j = 1:n
    if img(i, j) >= a && img(i, j) <= b
      img_no_bg(i, j) = 255;
    endif
  endfor
end

[m, n] = size(img);
img_with_bg = img;

for i = 1:m
  for j = 1:n
    if img(i, j) >= a && img(i, j) <= b
      img_with_bg(i, j) = 255;
    endif
  endfor
end

subplot(1, 3, 1);
imshow(img);
title('Original Image');

subplot(1, 3, 2);
imshow(img_no_bg);
title('Gray level slicing with no background');


subplot(1, 3, 3);
imshow(img_with_bg);
title('Gray level slicing with background');
