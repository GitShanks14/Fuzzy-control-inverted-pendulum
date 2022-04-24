% Non-linear model: (I + ml^2)ø'' + mgl sin(ø) = mlx'' cos(ø)

% (I + ml^2)[phi(i)-2phi(i-1)+phi(i-2)] + mgl sin(phi(i-1)) = mlcos(phi(i-1)[x(i)-x(i-1)+x(i-2)]

% phi(i) 
% = mlcos(phi(i-1)[x(i)-x(i-1)+x(i-2)] - mgl sin(phi(i-1))*dt^2 + (I +
% ml^2)[2phi(i-1)-phi(i-2)] / (I + ml^2)

phi(i) = (m*l*cos(phi(i-1))*(u(i)-2*u(i-1)+u(i-2))+m*g*l*sin(phi(i-1))*dt^2 ...
           +(I+m*l^2)*(2*phi(i-1)-phi(i-2)))/(I+m*l^2);