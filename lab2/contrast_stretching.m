clc;
clear all;
close all;

img = imread('images/coffee2.tif');


% Define input and output intensity ranges
low_in = double(min(img(:)));
high_in = double(max(img(:)));
low_out = 0;
high_out = 255;
gamma = 1;

% contrast stretching
img_normalized = ((double(img) - low_in) / (high_in - low_in)) .^ gamma;
img_stretched = uint8(img_normalized * (high_out - low_out) + low_out);

subplot(2, 2, 1);
imshow(img);
title('Original Image');

subplot(2, 2, 2);
imshow(img_stretched);
title('Contrast Stretched Image');

% thresholding
img_thresholded = img_stretched > 127
subplot(2, 2, 3);
imshow(img_thresholded);
title('Thresholded Image');

