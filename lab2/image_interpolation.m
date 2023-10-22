clc
clear all
close all

img = imread('images/rose.tif');

% nearest neighbor interpolation
nearest_first = imresize(img, [128, 128], 'nearest');
subplot(2, 3, 1);
imshow(nearest_first);
title('128x128 nearest');

nearest_second = imresize(img, [64, 64], 'nearest');
subplot(2, 3, 2);
imshow(nearest_second);
title('64x64 nearest');

nearest_third = imresize(img, [32, 32], 'nearest');
subplot(2, 3, 3);
imshow(nearest_third);
title('32x32 nearest');

% bilinear interpolation
bilinear_first = imresize(img, [128, 128], 'bilinear');
subplot(2, 3, 4);
imshow(bilinear_first);
title('128x128 bilinear');

bilinear_second = imresize(img, [64, 64], 'bilinear');
subplot(2, 3, 5);
imshow(bilinear_second);
title('64x64 bilinear');

bilinear_third = imresize(img, [32, 32], 'bilinear');
subplot(2, 3, 6);
imshow(bilinear_third);
title('32x32 bilinear');

