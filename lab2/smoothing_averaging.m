clc
clear all
close all

img = imread('ch3_images/Fig0334(a)(hubble-original).tif');

if size(img, 3) == 3
    img = rgb2gray(img);
end

% Apply a 15x15 averaging filter
mask = ones(15, 15) / 225;
img_smoothed = imfilter(img, mask, 'replicate');

% Apply thresholding on smoothed img
img_thresh = img_smoothed > 127


subplot(1, 3, 1);
imshow(img);
title('Original Image');

subplot(1, 3, 2);
imshow(img_smoothed);
title('Smoothed Image');

subplot(1, 3, 3);
imshow(img_thresh);
title('Thresholded Image');


