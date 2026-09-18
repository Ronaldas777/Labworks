clc, clearvars
%% 1. Vectors

a = (-pi:0.7:2*pi)';

b = cos(a);

c = a.^b;

disp('Vector a:')
disp(a')

disp('Vector b = cos(a):')
disp(b')

disp('Vector c = a.^b:')
disp(c')

%% 2. Matrices

X = [exp(5), exp(-1i*pi), log(1); 
    log(pi), -2, -sin(pi)];

x21 = X(2,1);
x13 = X(1,3);
x23 = X(2,3);

X_in = [x21^2, x13, x23^2];

X_joined = [X; X_in];

det_X = det(X_joined)
%% 3.Practical applications

A = 4.5;
f = 6;
sigma = 1;
U1 = 3;
U2 = 1.5;

t = 0 : 0.001 : 1.5;

s = A * cos(2 * pi * f * t);
n = sigma * randn(size(t));

signal_noisy = s + n;

samples_exceed_U1 = signal_noisy(signal_noisy > U1);

signal_filtered = signal_noisy;
signal_filtered(abs(signal_filtered) < U2) = 0;

num_samples_total = length(signal_noisy);
    
num_samples_exceed_U1 = length(samples_exceed_U1);

min_val = min(signal_filtered)
max_val = max(signal_filtered)
%% 4. Indexing of vector elements
A = input('Enter vector A: ');

A = A(:)'; 

M = A(ones(4, 1), 1:end);

mask = true(size(M));

B_column = M(mask);

B = B_column';

disp('vector B is:');
disp(B);