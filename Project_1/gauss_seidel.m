function x = gauss_seidel(A, b, w, error_max)
    % Inputs: 
    % A - Coefficient Matrix
    % b - Solution Vector 
    % w - Relaxation Parameter (Normally underrelax to slow convergence)
    % error_max - Maximum Relative Error
    
    % column vector of vars
    x = zeros(size(b));

    % get number of equations
    n = length(b);

    % set the greatest_relative_error of the equations to 100
    greatest_relative_error = 100; 

    % Loop until the greatest relative error is below max relative error
    while greatest_relative_error > error_max
        x_old = x; % last variable vector
        % loop through every row/eq
        for i = 1:n 
            % initialize vals in row var
            vals_in_row = 0;

            % for every val in the row sum them up (vals following b -  in
            % the gauss seidel equation)
            for j = 1:n
                if j ~= i % skip A(i,i)
                    vals_in_row = vals_in_row + (A(i, j) * x(j));
                end
            end
            % Update the variable value for the current equation using the 
            % Gauss-Seidel formula
            x(i)=((w/A(i, i))*(b(i)-vals_in_row))+(1-w)*x_old(i);
        end
        % check error for all of the var vals and then update the greatest
        % relative error
        greatest_relative_error=max(abs((x-x_old)./x));
    end
end
