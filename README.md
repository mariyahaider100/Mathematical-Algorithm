# perations-on-Signals-and-Sequences
Discrete-time signal plots in MATLAB, including impulse, step, ramp, exponential, signum, and sinc functions.

#code 
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

% Unit Step Signal
unit_step = (n >= 0); % Step is 1 for n >= 0, 0 elsewhere
figure;
stem(n, unit_step, 'filled');
title('Unit Step Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

% Unit Ramp Signal
unit_ramp = n .* (n >= 0); % Ramp is n for n >= 0, 0 elsewhere
figure;
stem(n, unit_ramp, 'filled');
title('Unit Ramp Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

% Exponential Signal
exponential_signal = exp(0.1 * n); % Exponential function e^(0.1*n)
figure;
stem(n, exponential_signal, 'filled');
title('Exponential Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

% Signum Function
signum_function = sign(n); % Signum function: -1 for n<0, 0 for n=0, 1 for n>0
figure;
stem(n, signum_function, 'filled');
title('Signum Function');
xlabel('n');
ylabel('Amplitude');
grid on;

% Sinc Function
sinc_function = sinc(n); % Sinc function: sinc(x) = sin(pi*x)/(pi*x)
figure;
stem(n, sinc_function, 'filled');
title('Sinc Function');
xlabel('n');
ylabel('Amplitude');
grid on;
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






