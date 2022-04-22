% Linearized model: (I + ml^2)ø'' - mglø = mlx''

phi(i) = (m*l*(u(i)-2*u(i-1)+u(i-2))+ ...
    (I+m*l^2)*(2*phi(i-1)-phi(i-2)))/(I+m*l^2-m*g*l*dt^2);

    if abs(phi(i)) > pi/2
        stable = false;
        disp("Model no longer valid");
    end