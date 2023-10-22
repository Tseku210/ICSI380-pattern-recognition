% Reading the original image
clc
clear all
close all

original_image = imread('ch3_images/Fig0354(a)(einstein_orig).tiff');

if size(original_image, 3) == 3
    original_image = rgb2gray(original_image);
end

% Create the AND mask
and_mask = zeros(size(original_image), 'uint8');
and_mask(10:300, 100:350) = 255;

% Create the OR mask
or_mask = ones(size(original_image), 'uint8') * 255;
or_mask(10:300, 100:350) = 0;

% Perform AND operation
and_result = bitand(original_image, and_mask);

% Perform OR operation
or_result = bitor(original_image, or_mask);

% Display the images
subplot(3, 2, 1);
imshow(original_image);
title('Original Image (a)');

subplot(3, 2, 2);
imshow(and_mask);
title('AND Image Mask (b)');

subplot(3, 2, 3);
imshow(and_result);
title('Result of AND operation (c)');

subplot(3, 2, 4);
imshow(original_image);
title('Original Image (d)');

subplot(3, 2, 5);
imshow(or_mask);
title('OR Image Mask (e)');

subplot(3, 2, 6);
imshow(or_result);
title('Result of OR operation (f)');

