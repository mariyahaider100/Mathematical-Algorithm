# FFT of Sinusoidal Signal in MATLAB

This project demonstrates the **time-domain** and **frequency-domain** representation of the signal:

\[
x(t) = \sin(2 \pi \cdot 50 t)
\]

using MATLAB.

## Features
- Time-domain signal generation for \( x(t) \)
- Fast Fourier Transform (FFT) for frequency-domain analysis
- Visualization with `subplot`:
  - **Top plot:** Time-domain signal (zoomed section)
  - **Bottom plot:** Frequency-domain representation using `fft` and `fftshift`

## MATLAB Code

```matlab
%% Signal in Time and Frequency Domain
clc;
clear all;
close all;

% Time domain signal
t = -1:0.001:1;
x = sin(2*pi*50*t);

% Time plot
subplot(2,1,1);
plot(t(1001:1200), x(1001:1200));
grid on;
title('Sin(2\pi50t)');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency domain
X = abs(fft(x));
X2 = fftshift(X);
f = -499.9 : 1000/2001 : 500;

subplot(2,1,2);
plot(f, X2);
grid on;
title('Frequency domain representation of Sin(2\pi50t)');
xlabel('Frequency (Hz)');
ylabel('|X(f)|');




#Plot
![plot 1](/exercise-6/Screenshot%202025-09-30%20at%2014.06.40.png)  