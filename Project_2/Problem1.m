% Problem 1

clc;
clear all;

% Spring Constants
k1 = 0.25;
k2 = 0.5;
k3 = 1.5;
k4 = 0.75;
k5 = 1.0;

% Coefficient matrix
A = [
    k1+k2, -k2,    0,    0,    0;
    -k2,   k2+k3, -k3,   0,    0;
    0,     -k3,   k3+k4, -k4,  0;
    0,      0,    -k4,   k4+k5, -k5;
    0,      0,     0,    -k5,   k5
];

% Const vector
B = [0; 0; 0; 0; 2];

% Solve Matrix
x = A \ B;

% Display X value
disp(x);

% Make 0 the first value and then cumulatively sum up the rest of the vals
plot_distance_vals= cumsum([0; x]);

% Plot graph with vals on x aligning to node numbers
plot_node_vals = 0:5;
plot(plot_node_vals, plot_distance_vals, '-o');

% Labels and titles
xlabel('Node (#)');
ylabel('Displacement (Units)');
title('Displacement of Springs');
grid on;