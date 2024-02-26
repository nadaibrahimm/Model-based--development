% 1.Cell Arrays:
myCellArray = {55,4.3,'Nada',[3 4 5],struct('Name','Nad','Age','23')};
disp(['Element 1: ' num2str(myCellArray{1})]); % Accessing and displaying the first element (a number)
disp(['Element 2: ' num2str(myCellArray{2})]); % Accessing and displaying the third element (a number)
disp(['Element 3: ' num2str(myCellArray{3})]); % Accessing and displaying the fourth element (a logical value)
disp(['Element 4: ' num2str(myCellArray{4})]); % Accessing and displaying the fifth element (an array)
disp(['Element 5: ' myCellArray{5}.Name]);     % Accessing and displaying the name field of the sixth element (a struct)
disp(['Element 5: ' myCellArray{5}.Age]);     % Accessing and displaying the name field of the sixth element (a struct)
% 2.Structures:
Information = struct('Name','Yara','Age','19','City','Cairo');
disp(Information.Name);
disp(Information.Age);
disp(Information.City);
% 3.Character Data:
University = 'Beni Suef ';
College = 'Navigation Science and Space Technology';
All = [University,College];
disp(All);
% 4. Conditional Statements (If):
X = input('Enter a number : ');
if rem(X,2) == 0
    disp('X is an even number');
else 
    disp('X is an odd number');
end
% 5. For Loops:
for i = [1 :10]
    disp(i);
    count = i + 1;
end
% 6. Basic Plotting:
X = linspace(0,2*pi,200);
Y = sin(X);
plot(X,Y)
xlabel('X_Axis');
ylabel('Y_Axis');
Purple = [0.50,0,0.50];
legend('sin(x)', 'TextColor',Purple);

