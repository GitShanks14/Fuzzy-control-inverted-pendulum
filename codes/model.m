% Pendulum Parameters: m = mass of pendulum, l = length, I = Moment
m = 0.2;
l = 0.3;
I = 0.006;

g = 9.8;

% Variables: x = base position, phi = deviation from unstable eqb
x   = 0;
phi = 0;

% Dynamics: (I + ml^2)ø'' - mglø = mlx'' : (I + ml^2)øs2 - mglø = mlxs^2
s = tf('s');
H = (m*l*s^2)/((I+m*l^2)*s^2 - m*g*l);

% PID controller: 1/s[s2Kd+sKc+Ki)
Kc = 0.48;
Ki = -1.6;
Kd = -0.025;

% Fuzzy control
fuzzy_def;
