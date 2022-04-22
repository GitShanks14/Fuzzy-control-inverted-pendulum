Int     = Int + phi(i);
Dif     = phi(i)-phi(i-1);
u(i+1)  = Kc * phi(i) + Ki * Int + Kd * Dif;