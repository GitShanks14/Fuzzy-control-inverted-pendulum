i = i-1;

t_new = -2*dt:dt:(i-3)*dt;
u_new = u(1:i);
x_new = x(1:i);
phi_new = phi(1:i);

close(v);

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