clc;
clear;

% You may want to actually write the equations instead of just creating a matrix 
% Coefficient matrix for circuit one
A = [
    1,-1,0,0,-1,0;
    0,20,2,5,-5,0;
    0,1,-1,0,0,0;
    0,0,1,-1,0,0;
    0,0,0,1,1,-1;
    10,0,0,0,5,25
    ];

% Solution vector for circuit one
b = [0; 0; 0; 0; 0; 200];

% relaxation param
w = 0.77;

% max allowed error
error_max = 1e-7;

% use the gauss_seidel function to calculate for the roots (circuit one)
x = gauss_seidel(A, b, w, error_max);

% Display the solution from Gauss seidel (circuit 1)
fprintf('Gauss Seidel Solution For Circuit 1:');
disp(x'); % transpose matrix just to bring it all on one line

% Calculate for the roots using MatLab
x = linsolve(A,b);
% Display the solution based on Matlab's calcs (circuit 1)
fprintf('Matlab Solution For Circuit 1:');
disp(x'); % transpose matrix just to bring it all on one line


% Coefficient matrix for circuit three
A = [
    1,-1,0,-1,0;
    0,1,1,0,-1;
    0,0,20,0,25;
    5,0,0,15,0;
    5,10,0,0,25
    ];

% Solution vector for circuit three
b = [0; 0; 50; 80; 80];

% use the gauss_seidel function to calculate for the roots (circuit three)
x = gauss_seidel(A, b, w, error_max);

% Display the solution from Gauss seidel (circuit 3)
fprintf('Gauss Seidel Solution For Circuit 3:');
disp(x'); % transpose matrix just to bring it all on one line

% Calculate for the roots using MatLab
x = linsolve(A,b);
% Display the solution based on Matlab's calcs (circuit 1)
fprintf('Matlab Solution For Circuit 3:');
disp(x'); % transpose matrix just to bring it all on one line