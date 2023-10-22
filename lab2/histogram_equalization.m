clc
clear all
close all

img1 = imread('ch3_images/Fig0320(4)(bottom_left).tif');
img2 = imread('ch3_images/Fig0320(1)(top_left).tif');
img3 = imread('ch3_images/Fig0320(3)(third_from_top).tif');
img4 = imread('ch3_images/Fig0320(2)(2nd_from_top).tif');

% first image
subplot(4, 4, 1);
imshow(img1);
subplot(4, 4, 2);
imhist(img1);

subplot(4, 4, 3);
hist_eq1 = histeq(img1); % equalization
imshow(hist_eq1);
subplot(4, 4, 4);
imhist(hist_eq1);

% second image
subplot(4, 4, 5);
imshow(img2);
subplot(4, 4, 6);
imhist(img2);

subplot(4, 4, 7);
hist_eq2 = histeq(img2); % equalization
imshow(hist_eq2);
subplot(4, 4, 8);
imhist(hist_eq2);

% third image
subplot(4, 4, 9);
imshow(img3);
subplot(4, 4, 10);
imhist(img3);

subplot(4, 4, 11);
hist_eq3 = histeq(img3); % equalization
imshow(hist_eq3);
subplot(4, 4, 12);
imhist(hist_eq3);

% fourth image
subplot(4, 4, 13);
imshow(img4);
subplot(4, 4, 14);
imhist(img4);

subplot(4, 4, 15);
hist_eq4 = histeq(img4); % equalization
imshow(hist_eq4);
subplot(4, 4, 16);
imhist(hist_eq4);

