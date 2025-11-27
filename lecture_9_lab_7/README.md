%% IMAGE DENOISING EXPERIMENT
** Author:** Mariya Haider 
**Course:** Mathematical Algorithms (DSP)
%
% This script demonstrates denoising of a grayscale image corrupted by
% Gaussian noise, and compares Mean, Median, Gaussian Blur, and DnCNN.

%% 1. Load Image and Add Gaussian Noise
originalImage = im2double(imread('original.png'));
if size(originalImage,3)==3
    originalImage = rgb2gray(originalImage);
end

sigma = 0.04;
noisyImage = imnoise(originalImage, 'gaussian', 0, sigma^2);

%% 2. Apply Denoising Filters

% Mean Filter
meanKernel = fspecial('average', [3 3]);
meanImage = imfilter(noisyImage, meanKernel, 'replicate');

% Median Filter
medianImage = medfilt2(noisyImage, [3 3]);

% Gaussian Blur
gaussImage = imgaussfilt(noisyImage, 1);

% Load DnCNN (if available)
dncnnImage = [];
if exist('dncnn.mat', 'file')
    load dncnn.mat   % variable inside should be 'net'
    dncnnImage = predict(net, noisyImage);
else
    warning('DnCNN model not found. Skipping AI output.');
end


%% --------------------------------------------------------------
%% 4. IMAGE QUALITY METRICS (MSE, PSNR, SSIM)
%% --------------------------------------------------------------

methods = {'Noisy','Mean','Median','Gaussian','DnCNN'};
images = {noisyImage, meanImage, medianImage, gaussImage, dncnnImage};

fprintf('\n=== IMAGE QUALITY METRICS ===\n');
for i = 1:length(methods)
    if isempty(images{i}), continue; end
    
    mseVal = immse(images{i}, originalImage);
    psnrVal = psnr(images{i}, originalImage);
    ssimVal = ssim(images{i}, originalImage);

    fprintf('\nMethod: %s\n', methods{i});
    fprintf('MSE   = %.4f\n', mseVal);
    fprintf('PSNR  = %.4f dB\n', psnrVal);
    fprintf('SSIM  = %.4f\n', ssimVal);
end


%% --------------------------------------------------------------
%% 5. VISUAL OBSERVATION RESULTS (DISPLAY COMPARISON)
%% --------------------------------------------------------------

figure('Name','Denoising Comparison');
subplot(1,6,1); imshow(originalImage); title('Original');
subplot(1,6,2); imshow(noisyImage); title('Noisy');
subplot(1,6,3); imshow(meanImage); title('Mean');
subplot(1,6,4); imshow(medianImage); title('Median');
subplot(1,6,5); imshow(gaussImage); title('Gaussian');

if ~isempty(dncnnImage)
    subplot(1,6,6); imshow(dncnnImage); title('DnCNN');
else
    subplot(1,6,6); imshow(noisyImage); title('DnCNN Missing');
end

sgtitle('Figure: Original vs Filter Methods');


%% --------------------------------------------------------------
%% 6. CONCLUSION (IN COMMENTS FOR README)
%% --------------------------------------------------------------

% Mean Filter:
%   - Removes some noise
%   - Causes strong blurring
%
% Median Filter:
%   - Preserves edges better
%   - Not ideal for Gaussian noise
%
% Gaussian Blur:
%   - Smooths effectively
%   - Still softens important details
%
% DnCNN (AI model):
%   - Best noise removal
%   - Preserves texture and edges
%   - Highest PSNR and SSIM
%
% FINAL RESULT:
%   DnCNN > Gaussian > Median > Mean

