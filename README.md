
# Operations on Signals and Sequences

Discrete-time signal plots in MATLAB, including impulse, step, ramp, exponential, signum, and sinc functions.

## MATLAB Code

```matlab
% Define the range of n values
n = -10:10;

% Unit Impulse Signal
unit_impulse = (n == 0); % Impulse is 1 at n=0, 0 elsewhere
figure;
stem(n, unit_impulse, 'filled');
title('Unit Impulse Signal');
xlabel('n');
ylabel('Amplitude');
grid on;
```
![image alt]<[[01.png](https://github.com/mariyahaider100/perations-on-Signals-and-Sequences/blob/91c6612da71655e9405c2544e11ed3590ac81951/01.png)

% Unit Step Signal
unit_step = (n >= 0); % Step is 1 for n >= 0, 0 elsewhere
figure;
stem(n, unit_step, 'filled');
title('Unit Step Signal');
xlabel('n');
ylabel('Amplitude');
grid on;
```
![image alt]<[[02.png](https://github.com/mariyahaider100/perations-on-Signals-and-Sequences/blob/e01e80f1d0c36ff5ed1f8ad1943cea059e16ad00/02.png)

% Unit Ramp Signal
unit_ramp = n .* (n >= 0); % Ramp is n for n >= 0, 0 elsewhere
figure;
stem(n, unit_ramp, 'filled');
title('Unit Ramp Signal');
xlabel('n');
ylabel('Amplitude');
grid on;
```
![image alt]<[[03.png](https://github.com/mariyahaider100/perations-on-Signals-and-Sequences/blob/e01e80f1d0c36ff5ed1f8ad1943cea059e16ad00/03.png)

% Exponential Signal
exponential_signal = exp(0.1 * n); % Exponential function e^(0.1*n)
figure;
stem(n, exponential_signal, 'filled');
title('Exponential Signal');
xlabel('n');
ylabel('Amplitude');
grid on;
```
![image alt]<[[04.png](https://github.com/mariyahaider100/perations-on-Signals-and-Sequences/blob/e01e80f1d0c36ff5ed1f8ad1943cea059e16ad00/04.png) 

% Signum Function
signum_function = sign(n); % -1 for n<0, 0 for n=0, 1 for n>0
figure;
stem(n, signum_function, 'filled');
title('Signum Function');
xlabel('n');
ylabel('Amplitude');
grid on;
```
![image alt]<[[05.png](https://github.com/mariyahaider100/perations-on-Signals-and-Sequences/blob/e01e80f1d0c36ff5ed1f8ad1943cea059e16ad00/05.png)
% Sinc Function
sinc_function = sinc(n); % sinc(x) = sin(pi*x)/(pi*x)
figure;
stem(n, sinc_function, 'filled');
title('Sinc Function');
xlabel('n');
ylabel('Amplitude');
grid on;
```
![image alt]<[[06.png](https://github.com/mariyahaider100/perations-on-Signals-and-Sequences/blob/e01e80f1d0c36ff5ed1f8ad1943cea059e16ad00/06.png) 
% Plot all signals in a single figure for comparison
figure;
hold on;
stem(n, unit_impulse, 'filled', 'DisplayName', 'Unit Impulse');
stem(n, unit_step, 'filled', 'DisplayName', 'Unit Step');
stem(n, unit_ramp, 'filled', 'DisplayName', 'Unit Ramp');
stem(n, exponential_signal, 'filled', 'DisplayName', 'Exponential');
stem(n, signum_function, 'filled', 'DisplayName', 'Signum');
stem(n, sinc_function, 'filled', 'DisplayName', 'Sinc');
hold off;
title('Comparison of Signals');
xlabel('n');
ylabel('Amplitude');
legend show;
grid on;
```
