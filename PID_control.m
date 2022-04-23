Int     = Int + phi(i);
Dif     = phi(i)-phi(i-1);

% if Int > 20
%     Int = 20;
% end


% Position form 
% u(i+1)  = Kc * phi(i) + Ki * Int + Kd * Dif;

% Velocity form
%u(i+1)  = Kc * (phi(i)-phi(i-1)) + Ki * phi(i) + Kd * (phi(i)-2*phi(i-1)+phi(i-2)) + u(i);

du      = Kc * (phi(i)-phi(i-1)) + Ki * phi(i) + Kd * (phi(i)-2*phi(i-1)+phi(i-2));
u(i+1)  = u(i) + du;