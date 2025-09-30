%% Signal in Time and Frequency Domain
% This program demonstrates the time domain and frequency domain
% representation of the signal x(t) = sin(2*pi*50*t).
%
% Author: Your Name
% Date: YYYY-MM-DD

clc;
clear all;
close all;

%% Time domain signal
% Discretize t from -1 to 1 with increment of 0.001
t = -1:0.001:1;

% Define the signal x(t) = sin(2*pi*50*t)
x = sin(2*pi*50*t);

%% Plot time domain signal
figure;
subplot(2,1,1);
plot(t(1001:1200), x(1001:1200));   % zoomed portion of the signal
grid on;
title('Sin(2\pi50t)');
xlabel('Time (s)');
ylabel('Amplitude');

%% Frequency domain using FFT
% Compute absolute value of FFT
X = abs(fft(x));

% Perform fftshift to center zero frequency
X2 = fftshift(X);

% Frequency axis
f = -499.9 : 1000/2001 : 500;

%% Plot frequency domain signal
subplot(2,1,2);
plot(f, X2);
grid on;
title('Frequency domain representation of Sin(2\pi50t)');
xlabel('Frequency (Hz)');
ylabel('|X(f)|');



# Plot

![plot 1](/exercise-6/Screenshot%202025-09-30%20at%2014.06.40.png)