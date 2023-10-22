clc
clear all
close all

img = imread('ch3_images/Fig0342(a)(contact_lens_original).tif');
if size(img,3) == 3
    img = rgb2gray(img);
end
img = im2double(img);

% Define Sobel Filters for x and y directions
sobel_x = [
    -1 0 1;
    -2 0 2;
    -1 0 1
];
sobel_y = [
    -1 -2 -1;
    0 0 0;
    1 2 1
];

% Apply Sobel Filters
gradient_x = imfilter(img, sobel_x, 'same');
gradient_y = imfilter(img, sobel_y, 'same');

% Compute Gradient Magnitude
gradient_magnitude = sqrt(gradient_x.^2 + gradient_y.^2);

% Display
subplot(1,2,1); imshow(img); title('Original Image');
subplot(1,2,2); imshow(gradient_magnitude, []); title('Sobel Gradient Magnitude');

