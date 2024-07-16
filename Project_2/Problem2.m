% Problem 2

clc;
clear all;

% Coefficient Matrix (1 is dx/dt(6))
A = [ 10  -10   0   0   0   0;
     -10   20 -10   0   0   0;
       0  -10  20 -10   0   0;
       0    0 -10  20 -10   0;
       0    0   0 -10  20   0;
       0    0   0   0  10   1];

% Const Vector
B = [-140; 120; 120; 120; 220; 40];

% Solve Matrix
T = A \ B;

% Temperature Gradient at end boundary so take that as its own value
temp_gradient = T(6);
disp(temp_gradient)

% Get and display temp values throughout rod (ignore last value as its temp gradient)
temp_vals = T(1:5);

% end of bar is 10 so append that as the last recorded temp!
temp_vals = [temp_vals; 10];
disp(temp_vals)

%Plot Graph
x = linspace(0, 0.5, 6);
plot(x, temp_vals, '-o');

% Labels
xlabel('Current Position (m)');
ylabel('Temperature (C)');
title('Temperature Distribution of Rod');
grid on;