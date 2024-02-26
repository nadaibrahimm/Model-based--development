% Define a structure to store information about a person
person = struct('name', '', 'age', 0, 'city', '');

% Assign values to the fields
person.name = 'John Doe';
person.age = 30;
person.city = 'New York';

% Access and display the fields
disp(['Name: ', person.name]);
disp(['Age: ', num2str(person.age)]);
disp(['City: ', person.city]);
