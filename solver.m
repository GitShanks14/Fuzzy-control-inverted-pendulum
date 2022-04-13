% Setup
Fs = 100;
dt = 1/Fs;
T  = 10;

t   = -2*dt:dt:T;
x   = zeros(length(t),1);
u   = zeros(length(t),1);
phi = zeros(length(t),1);

d_stdev = 0.01;

% Initial conditions: 
u(1) = 0;
u(2) = 0;

% u(3:end) = sin(50*pi*(0:dt:T));

phi(1) = 0;
phi(2) = 0;

% Simulation
i = 3;

while ( i < length(t) )
    % Controller:
    x(i) = u(i);

    % System:
    phi(i) = ((I+m*l^2)*(phi(i)-2*phi(i-1)+phi(i-2))/dt^2 ...
        - m*l*(x(i)-2*x(i-1)+x(i-2))/dt^2)/m*g*l;        
    i = i + 1;
end

figure;
subplot(2,1,1);
plot(t,u);
xlabel("Time (s)");
ylabel("Displacement (m)");
title("Input displacement");

subplot(2,1,2);
plot(t,phi);
xlabel("Time (s)");
ylabel("Deviation angle (rad)");
title("Output deviation angle");

sgtitle("Input vs Output");