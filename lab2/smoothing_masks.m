% Read the original image
img = imread('ch3_images/Fig0333(a)(test_pattern_blurring_orig).tif');

% Convert to grayscale if it's RGB
if size(img, 3) == 3
    img = rgb2gray(img);
end

% Define masks of different sizes
mask_sizes = [3, 5, 9, 15, 35];
results = cell(1, length(mask_sizes));

% Apply each mask
for k = 1:length(mask_sizes)
    mask_size = mask_sizes(k);
    mask = ones(mask_size, mask_size) / (mask_size^2);
    results{k} = imfilter(img, mask, 'replicate');
end

% Display the results
subplot(1, length(mask_sizes) + 1, 1);
imshow(img);
title('Original Image');

for k = 1:length(mask_sizes)
    subplot(1, length(mask_sizes) + 1, k+1);
    imshow(results{k});
    title([num2str(mask_sizes(k)) ' x ' num2str(mask_sizes(k)) ' mask']);
end

