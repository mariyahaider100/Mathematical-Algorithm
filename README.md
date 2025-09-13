
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
![image alt]<img width="1081" height="531" alt="Screenshot 2025-09-10 at 19 57 41" src="https://github.com/user-attachments/assets/7677df89-fc83-406a-b0a8-c6d4e642ad8d" />

% Unit Step Signal
unit_step = (n >= 0); % Step is 1 for n >= 0, 0 elsewhere
figure;
stem(n, unit_step, 'filled');
title('Unit Step Signal');
xlabel('n');
ylabel('Amplitude');
grid on;
<img width="532" height="511" alt="Screenshot 2025-09-10 at 19 57 47" src="https://github.com/user-attachments/assets/bffd0212-0278-4ec9-a80b-76d9bcdb629a" />


% Unit Ramp Signal
unit_ramp = n .* (n >= 0); % Ramp is n for n >= 0, 0 elsewhere
figure;
stem(n, unit_ramp, 'filled');
title('Unit Ramp Signal');
xlabel('n');
ylabel('Amplitude');
grid on;
<img width="546" height="541" alt="Screenshot 2025-09-10 at 19 57 54" src="https://github.com/user-attachments/assets/13e02eb6-40ba-4eb6-b67d-e2a3f93a8a00" />

% Exponential Signal
exponential_signal = exp(0.1 * n); % Exponential function e^(0.1*n)
figure;
stem(n, exponential_signal, 'filled');
title('Exponential Signal');
xlabel('n');
ylabel('Amplitude');
grid on;
<img width="537" height="529" alt="Screenshot 2025-09-10 at 19 58 00" src="https://github.com/user-attachments/assets/a817d0eb-e339-460b-a2e0-288a8400b802" />

% Signum Function
signum_function = sign(n); % -1 for n<0, 0 for n=0, 1 for n>0
figure;
stem(n, signum_function, 'filled');
title('Signum Function');
xlabel('n');
ylabel('Amplitude');
grid on;
<img width="542" height="524" alt="Screenshot 2025-09-10 at 19 58 07" src="https://github.com/user-attachments/assets/cc67c085-850a-429f-a686-2a4d2bfb649e" />

% Sinc Function
sinc_function = sinc(n); % sinc(x) = sin(pi*x)/(pi*x)
figure;
stem(n, sinc_function, 'filled');
title('Sinc Function');
xlabel('n');
ylabel('Amplitude');
grid on;
<img width="538" height="494" alt="Screenshot 2025-09-10 at 19 58 13" src="https://github.com/user-attachments/assets/177be930-ce74-4179-9f2f-30ed944e8919" />

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
<img width="538" height="494" alt="Screenshot 2025-09-10 at 19 58 13" src="https://github.com/user-attachments/assets/6b776f31-90f0-43d4-9bd1-14e5dd593810" />


