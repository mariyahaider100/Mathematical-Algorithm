clc;
clear all;
close all;
t=-1:0.001:1;
x=sin(2*pi*50*t);
% Discretize the value of t from -1 to 1 with the increment of 0.001
% write the function x = sin(2π50t) in MATLAB
%Use the subplot function subplot(2,1,1); X=abs(fft(x)); plot(t(1001:1200),x(1:200));
grid;
title('Sin(2\pi50t)') xlabel('Time, s')
%Use the subplot function
% write the matlab code for absolute value of fast Fourier transform of x, and assign it asX
% Now find the fftshift of X to get X2
X2=fftshift(X); f=-499.9:1000/2001:500; subplot(2,1,2);
plot(f,X2);
grid;
title(' Frequency domain representation of ... Sin(2\pi50t)'); xlabel('Frequency, Hz.');


# Plot

![plot 1](/exercise-6/Screenshot%202025-09-30%20at%2014.06.40.png)