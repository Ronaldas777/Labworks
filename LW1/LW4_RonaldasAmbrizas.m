clc, clear, close all;

x = linspace(-2, 2, 100);
y = linspace(-2, 2, 100);

[X, Y] = meshgrid(x, y);

Z = sin(abs(X + Y) / 20) .* exp(-abs(X + Y));

figure;
surf(X, Y, Z);
colormap(turbo);
shading interp;
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = sin(|x+y|/20)e^{-|x+y|}');
view(30, 30);
grid on;
%%
clc, clear, close all;

theta = linspace(0, 2*pi, 150);
r = linspace(0, 1, 100);

[Theta, R] = meshgrid(theta, r);

X = R .* cos(Theta);
Y = R .* sin(Theta);

Z = 1 - 2*X.^2 - 3*Y.^2;

figure;
surf(X, Y, Z);
colormap(parula);
shading interp;
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = 1 - 2x^2 - 3y^2');
view(78, 78);
grid on;
%%
clc, clear, close all;

x = linspace(-2,2,100);
y = linspace(-2,2,100);

[X,Y] = meshgrid(x,y);

Z = 1 - (X.^2 + Y.^2);

surf(X,Y,Z);
colormap([1 0 0]);
camlight('left');
lighting phong;
xlabel('x');
ylabel('y');
zlabel('z');
title('z(x,y) = 1 - (x^2 + y^2)');