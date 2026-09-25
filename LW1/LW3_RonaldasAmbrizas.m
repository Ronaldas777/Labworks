clear, clc, close all

x = -pi:0.1:pi;

y = tan(sin(x)) + sin(tan(x));

figure;

plot(x, y, "y");
title('y = tan(sin(x)) + sin(tan(x))');
xlabel('x');
ylabel('y');

grid on;

xlim([-pi pi]);
%%
y1=exp(-0.5*x);
y2=sin(x);

title('y = e^{-0.5x} and y = sin(x)');
xlabel('x');
ylabel('y');

grid on;
xlim([-pi pi]);

semilogy(x, abs(y1),"b");
hold on;
semilogy(x, abs(y2),"g");
hold off;
%%
N = 5;
M = 6;

A = rand(N, M);

figure;

area(A);

title('N x M Random Matrix - Area Plot');
xlabel('Column');
ylabel('Value');

legend('Row 1', 'Row 2', 'Row 3', 'Row 4', 'Row 5', ...,
    'Location', 'best');

grid on;

xlim([1 M]);

figure;

mesh(A);

title('Wireframe Mesh of Random Matrix');
xlabel('Column');
ylabel('Row');
zlabel('Value');

grid on;

xlim([1 M]);
ylim([1 N]);
%%
A = 4.5;
f = 6;
sigma = 1;

U1 = 3;
U2 = 1.5;

t = 0:0.001:1.5;

s = A * cos(2*pi*f*t);

n = sigma * randn(size(t));

signal_noisy = s + n;

signal_filtered = signal_noisy;
signal_filtered(abs(signal_filtered) < U2) = 0;

figure;

% Original signal
subplot(2,1,1);

plot(t, signal_noisy, 'b-.');
hold on;

yline(U1,"g",'LineWidth', 1.5);
yline(U2);

[maxValue, maxIndex] = max(signal_noisy);
[minValue, minIndex] = min(signal_noisy);

plot(t(maxIndex), maxValue, 'm^', ...
    'MarkerEdgeColor', 'm', ...
    'MarkerFaceColor', 'm', ...
    'MarkerSize', 10);

plot(t(minIndex), minValue, 'mv', ...
    'MarkerEdgeColor', 'm', ...
    'MarkerFaceColor', 'm', ...
    'MarkerSize', 10);

title('Original Noisy Signal');
xlabel('Time (s)', 'Color', 'b', 'FontSize', 12);
ylabel('Voltage (V)', 'Color', 'b', 'FontSize', 12);

legend('Original signal', 'U_1 = 3 V', 'U_2 = 1.5 V', ...
    'Maximum', 'Minimum');

grid on;

xlim([0 1.5]);
ylim([min([signal_noisy U1 U2])-0.5 ...
    max([signal_noisy U1 U2])+0.5]);
hold off;

% Filtered signal
subplot(2,1,2);

plot(t, signal_filtered, 'y-');
hold on;

yline(U1,"g",'LineWidth', 1.5);
yline(U2);

title('Filtered Signal');
xlabel('Time (s)', 'Color', 'b', 'FontSize', 12);
ylabel('Voltage (V)', 'Color', 'b', 'FontSize', 12);

legend('Filtered signal', 'U_1 = 3 V', 'U_2 = 1.5 V');
grid on;

xlim([0 1.5]);
ylim([min([signal_filtered U1 U2])-0.5 ...
    max([signal_filtered U1 U2])+0.5]);
hold off;