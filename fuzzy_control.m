% Input: phi
% Output: du

% 180/da+round(phi(i)*180/pi/da)+1
% length(vn)

% i = i-1;
% phi(i) = pi/12;

% Fuzzification
mu_vn = vn(180/da+round(phi(i)*180/pi/da)+1);
mu_n  =  n(180/da+round(phi(i)*180/pi/da)+1);
mu_z  =  z(180/da+round(phi(i)*180/pi/da)+1);
mu_p  =  p(180/da+round(phi(i)*180/pi/da)+1);
mu_vp = vp(180/da+round(phi(i)*180/pi/da)+1);

mu_sys = [mu_vn mu_n mu_z mu_p mu_vp];
% y_sys = [2 1 0 -1 -2];

du_fuzzy = mu_sys * y_sys;

% defuzzification
du = du_fuzzy' * Kdefuz;
u(i+1) = u(i) + du;