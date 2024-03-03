function CirArea = calculateCircleArea(R)
R = input('Enter a radius : ');
pi = 22/7;
CirArea = pi * R.^2;
disp(CirArea);
end