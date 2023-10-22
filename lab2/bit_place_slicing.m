clc
clear all
close all

img = imread('ch3_images/Fig0314(a)(100-dollars).tif');

if size(img, 3) == 3
    img = rgb2gray(img);
end

subplot(3, 3, 1);
imshow(img);
title('Original Image');

% Loop for each bit plane, from LSB to MSB
for k = 1:8
    bit_img = bitget(img, k);
    subplot(3, 3, k+1);
    imshow(logical(bit_img));
    title(['Bit Plane ', num2str(k)]);
end
