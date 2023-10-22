clc
clear all
close all

img = imread('ch3_images/Fig0335(a)(ckt_board_saltpep_prob_pt05).tif');

if size(img, 3) == 3
    img = rgb2gray(img);
end

% 3. Apply a 3x3 averaging filter
avg_mask = ones(3, 3) / 9;
img_avg_filtered = imfilter(img, avg_mask, 'replicate');

% 4. Apply a 3x3 median filter
img_median_filtered = medfilt2(img, [3 3]);

subplot(1, 3, 1);
imshow(img);
title('Original Image');

subplot(1, 3, 2);
imshow(img_avg_filtered);
title('3x3 Averaging Filter');

subplot(1, 3, 3);
imshow(img_median_filtered);
title('3x3 Median Filter');

