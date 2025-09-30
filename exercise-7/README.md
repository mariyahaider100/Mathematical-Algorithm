# FFT of Two Sinusoids in MATLAB

This project demonstrates the **time-domain** and **frequency-domain** representation of the signal:

\[
x(t) = \sin(2 \pi \cdot 50 t) + \sin(2 \pi \cdot 75 t)
\]

using MATLAB.

## Features
- Time-domain signal generation for \( x(t) \)
- Fast Fourier Transform (FFT) for frequency-domain analysis
- Visualization with `subplot`:
  - **Top plot:** Time-domain signal (zoomed section)
  - **Bottom plot:** Frequency-domain representation with `fft` and `fftshift`

## MATLAB Code

```matlab
clc; clear all; close all;

% Time vector from -1 to 1 with step 0.001
t = -1:0.001:1;

% Sinusoidal function
x = sin(2*pi*50*t) + sin(2*pi*75*t);

%% === Time Domain Plot ===
subplot(2,1,1);
plot(t(1001:1200), x(1001:1200));  % show 0 to 0.2 sec for clarity
grid on;
title('Sin(2\pi50t) + Sin(2\pi75t)');
xlabel('Time (s)');
ylabel('Amplitude');

%% === Frequency Domain Plot ===
N = length(t);    % number of samples
Fs = 1000;        % sampling frequency (1/0.001)
X = abs(fft(x));  % magnitude of FFT
X2 = fftshift(X); % shift zero freq to center

% Frequency axis
f = (-N/2 : N/2-1) * (Fs/N);

subplot(2,1,2);
plot(f, X2);
grid on;
title('Frequency domain representation of Sin(2\pi50t) + Sin(2\pi75t)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

#Plot
![plot 2](/exercise-7/Screenshot%202025-09-30%20at%2014.26.46.png) 