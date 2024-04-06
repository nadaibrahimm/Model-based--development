% Parameters
g = 9.81; % (m/s^2)
L = 1; % length of the pendulum (m)
theta0 = pi/4;   % initial angle (radians)
omega0 = 0;     % initial angular velocity (rad/s)
tspan = [0 10];   % time span for simulation (s)


System_equation  = @(t, y) [y(2); -g/L*sin(y(1))];

%  to Solve the differential equations
[t, sol] = ode45(System_equation, tspan, [theta0 omega0]);

theta = sol(:, 1);
omega = sol(:, 2);

%  finally Plot the results
figure;
plot(t, theta, '-');
xlabel('Time (s)');
ylabel('Angle (radians)');
title('Simple Pendulum Angle vs Time');

% Animation of the pendulum
figure;
for i = 1:length(t)
    x = L*sin(theta(i));
    y = -L*cos(theta(i));
    plot([0 x], [0 y], 'b', 'LineWidth', 2);
    hold on;
    plot(x, y, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
    hold off;
    axis([-1.5*L 1.5*L -1.5*L 0.5*L]);
    axis square;
    xlabel('x');
    ylabel('y');
    title('Simple Pendulum Animation');
    pause(0.0);
end
