plot = false;
L    = 20;

Ess = NaN;
OS  = NaN;
xr  = NaN;

Kc = 0;
Kd = 0;
Ki = 0;

while (Ess > 0.1) && (OS>0.3) && (xr>l)
    solver;
    xr  = max(max(u),abs(min(u)));
    Ess = phi(end);
    OS  = max(max(phi),abs(min(phi)));

