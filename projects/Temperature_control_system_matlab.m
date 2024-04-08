
Kp = 1;         % Proportional gain
Ki = 0.1;       % Integral gain
Kd = 0.05;      % Derivative gain
tau = 10;       % Time constant of the plant
T_setpoint = 50;   % Setpoint temperature
T_initial = 20;    % Initial temperature


plant = @(t, T, u) (1/tau) * (-T + u);

% Define PID Controller
controller = @(e, e_integral, e_derivative) Kp*e + Ki*e_integral + Kd*e_derivative;

% Simulation parameters
t_span = [0 100];   % Time span
dt = 0.1;           % Time step
t = t_span(1):dt:t_span(2);
T = zeros(size(t));
T(1) = T_initial;
e_integral = 0;
e_prev = 0;

% Simulate the system
for i = 2:length(t)
    % Calculate error
    e = T_setpoint - T(i-1);
    
    % Update integral term
    e_integral = e_integral + e*dt;
    
    % Calculate derivative term
    e_derivative = (e - e_prev) / dt;
    e_prev = e;
    
    % Calculate control signal
    u = controller(e, e_integral, e_derivative);
    
    % Simulate plant dynamics
    [~, T_next] = ode45(@(t, T) plant(t, T, u), [t(i-1) t(i)], T(i-1));
    T(i) = T_next(end);
end

% Plot results
figure;
plot(t, T, 'o', 'LineWidth', 2);
hold on;
plot(t, T_setpoint*ones(size(t)), 'y--', 'LineWidth', 2);
xlabel('Time');
ylabel('Temperature');
legend('Temperature', 'Setpoint');
title('Temperature Control System Simulation');
grid on;
