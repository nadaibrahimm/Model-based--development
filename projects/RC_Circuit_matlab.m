% Parameters
R = 2000;              % Resistance (in ohms)
C = 1e-6;              % Capacitance (in farads)
V0 = 5;           
T = 30;           
dt = 0.02;          % Time step (in seconds)
t = 0:dt:T;
V = zeros(size(t));
V(1) = V0;          % Initial voltage

% Simulate the RC circuit using Euler's method
for i = 2:length(t)
    V(i) = V(i-1) + dt/ (R*C) * (-V(i-1));
end

% Plotting the results
plot(t, V);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Voltage across Capacitor in an RC Circuit');
grid on;
