clc
clear all
close all

img = imread('ch3_images/Fig0340(a)(dipxe_text).tiff');

if size(img, 3) == 3
    img = rgb2gray(img);
end
img = double(img); % Convert to double for processing

% Gaussian filter to blur the image
h = fspecial('gaussian', [5 5], 1.5);
blurred_img = imfilter(img, h);

% Compute the unsharp mask
unsharp_mask = img - blurred_img;

% Unsharp masking
sharpened_img = img + unsharp_mask;

% High-boost filtering (with a factor of, say, 1.5)
boosted_img = img + 1.5 * unsharp_mask;

% Display the results
figure;
subplot(1, 4, 1), imshow(uint8(img)), title('Original Image');
subplot(1, 4, 2), imshow(uint8(blurred_img)), title('Blurred Image');
subplot(1, 4, 3), imshow(uint8(sharpened_img)), title('After Unsharp Masking');
subplot(1, 4, 4), imshow(uint8(boosted_img)), title('After High-boost Filtering');

