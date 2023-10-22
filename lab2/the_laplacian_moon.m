clc
clear all
close all

img = imread('ch3_images/Fig0338(a)(blurry_moon).tiff');
if size(img, 3) == 3
    img = rgb2gray(img);
end
img = im2double(img);  % Convert image to double for processing

% Define the Laplacian filter
laplacian_filter = [
    -1 -1 -1;
    -1 8 -1;
    -1 -1 -1
];

% Apply the Laplacian filter
laplacian_img = imfilter(img, laplacian_filter, 'same');

% Sharpen the image using the Laplacian
sharpened_img = img + laplacian_img;

% Display the results
figure;
subplot(1,4,1); imshow(img); title('Original Image');
subplot(1,4,2); imshow(laplacian_img); title('Laplacian ');
subplot(1,4,3); imshow(laplacian_img + 0.5); title('Laplacian scaling');
subplot(1,4,4); imshow(sharpened_img); title('Sharpened Image');

