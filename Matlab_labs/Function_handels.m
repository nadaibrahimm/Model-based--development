function result = applyFunction(func_handle,vector)
    % Apply the provided function to every element in the vector
    vector = 1:6;
    result = arrayfun(func_handle, vector);
end
% Define function handles for square and cube
square = @(x) x.^2;
cube = @(x) x.^3;

% Create a test vector
vector = 1:5;

% Test applyFunction with square function
result_square = applyFunction(square, vector);
disp('Result using square function:');
disp(result_square);

% Test applyFunction with cube function
result_cube = applyFunction(cube, vector);
disp('Result using cube function:');
disp(result_cube);
