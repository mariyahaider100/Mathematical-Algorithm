%% Exercise 10 – 5-point & 9-point Moving-Average Filters (MAF)
% Savonia – DSP

clc; clear; close all;

%% Coefficients
b1 = [1 1 1 1 1];          a1 = 1;    % 5-point MAF
b2 = [1 1 1 1 1 1 1 1 1];  a2 = 1;    % 9-point MAF

% Optional: normalize to unit DC gain
% b1 = b1 / numel(b1);
% b2 = b2 / numel(b2);

%% Frequency responses
nfft = 2048;
[H1, w1] = freqz(b1, a1, nfft);
[H2, w2] = freqz(b2, a2, nfft);

%% Convert to zero–pole form
[z1, p1, k1] = tf2zpk(b1, a1);
[z2, p2, k2] = tf2zpk(b2, a2);

%% Plots – Magnitude Responses
figure('Name','Magnitude responses','Color','w');

subplot(2,2,1);
plot(w1/pi, abs(H1), 'LineWidth',1.5); grid on;
xlabel('Normalized frequency  (\times\pi rad/sample)');
ylabel('|H_1(e^{j\omega})|');
title('Transfer Function of 5-point MAF');

subplot(2,2,3);
plot(w2/pi, abs(H2), 'LineWidth',1.5); grid on;
xlabel('Normalized frequency  (\times\pi rad/sample)');
ylabel('|H_2(e^{j\omega})|');
title('Transfer Function of 9-point MAF');

%% Plots – Pole–Zero Diagrams
subplot(2,2,2);
zplane(z1, p1); axis equal;
title('Pole–zero plot of 5-point MAF');

subplot(2,2,4);
zplane(z2, p2); axis equal;
title('Pole–zero plot of 9-point MAF');

%% Console Output
disp('--- 5-point MAF ---');
disp('Zeros:'), disp(z1.'), disp('Poles:'), disp(p1.')
disp('Gain k:'), disp(k1)

disp('--- 9-point MAF ---');
disp('Zeros:'), disp(z2.'), disp('Poles:'), disp(p2.')
disp('Gain k:'), disp(k2)
