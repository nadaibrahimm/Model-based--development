%define an anonymous function for quadric information
QuadFunction = @(x) x^2 +2*x +1;
%evaluate the anonymous function for a quadrqtic equation
result = QuadFunction(3);
disp(result); 