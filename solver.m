% Setup
Fs = 60;
dt = 1/Fs;
T  = 10;

t   = -2*dt:dt:T;
u   = zeros(length(t)+1,1);
Int = 0;
phi = zeros(length(t),1);

d_stdev = 0.01;
dist    = 0;

% Initial conditions: 
u(1) = 0;
u(2) = 0;

% u(3:end) = sin(50*pi*(0:dt:T));

phi(1) = 0;
phi(2) = max(dist*randn(1),1e-3);

% Simulation
i = 3;

% Animation
plotting = true;
record = false;

if record
    v = VideoWriter('video\NL_PID_Dist_1.mp4','MPEG-4');
    open(v);
end
stable = true;

while ( (i < length(t)) && stable )
    % System:
    NL_step;

    % Disturbance:
    phi(i) = phi(i) + dist * randn(1);

    while(phi(i) > pi)
        phi(i) = phi(i)-2*pi;
    end

    while (phi(i) < -pi)
        phi(i) = phi(i)+2*pi;    
    end

    % Controller:
    %PID_control;
    fuzzy_control;

    % Video
    if record
    % record_base;
    record_pendulum;
    
        writeVideo(v,frame);
    end

    % Iterate
    i = i + 1;
    disp(i);
end


% for j = 1:60
%     writeVideo(v,frame);
% end

i = i-1;

t_new = -2*dt:dt:(i-3)*dt;
u_new = u(1:i);
phi_new = phi(1:i);

if record
    close(v);
end

if plotting
    figure;
    subplot(2,1,1);
    plot(t_new,u_new);
    xlabel("Time (s)");
    ylabel("Displacement (m)");
    title("Input displacement");
    
    subplot(2,1,2);
    plot(t_new,phi_new);
    xlabel("Time (s)");
    ylabel("Deviation angle (rad)");
    title("Output deviation angle");
    
    sgtitle("Input vs Output");
end