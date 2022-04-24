% fuzzification
da      = 0.01;
angles  = -180:da:180;

w1  = 5;
w2  = 30;
w   = 30;

z       = zeros(length(angles),1);
p       = zeros(length(angles),1);
n       = zeros(length(angles),1);
vp      = zeros(length(angles),1);
vn      = zeros(length(angles),1);

% Zero class membership function
a1     = (180-w1/2)/da:180/da;
z(a1)  = (1:length(a1))/length(a1);
a2     = 180/da:(180+w1/2)/da;
z(a2)  = 1-(1:length(a2))/length(a2);

% Positive class membership function
a1     = (180)/da:(180+w2/2)/da;
p(a1)  = (1:length(a1))/length(a1);
a2     = (180+w2/2)/da:(180+w2)/da;
p(a2)  = 1-(1:length(a2))/length(a2);

% Negative class membership function
a1     = (180-w2)/da:(180-w2/2)/da;
n(a1)  = (1:length(a1))/length(a1);
a2     = (180-w2/2)/da:(180)/da;
n(a2)  = 1-(1:length(a2))/length(a2);

% Very Negative class membership function
a1     = 1:(180-w)/da;
vn(a1)  = ones(length(a1),1);
a2     = (180-w)/da:(180-w/2)/da;
vn(a2)  = 1-(1:length(a2))/length(a2);

% Very Positivs class membership function
a1     = (180+w)/da:360/da;
vp(a1)  = ones(length(a1),1);
a2     = (180+w/2)/da:(180+w)/da;
vp(a2)  = (1:length(a2))/length(a2);

figure;
hold on;
plot(angles,vn);
plot(angles,n);
plot(angles,z);
plot(angles,p);
plot(angles,vp);
xlabel("Deviation angle (degrees)");
ylabel("Membership function");
xlim([-180 180]);
ylim([0 1]);
legend("VN","N","Z","P","VP");

% Control rules:
y_sys = [4 2 0 -2 -4]';

% Defuzzification factor:
Kdefuz  = 0.09;

mu_vn = vn(round((180+angles)/da)+1);
mu_n  =  n(round((180+angles)/da)+1);
mu_z  =  z(round((180+angles)/da)+1);
mu_p  =  p(round((180+angles)/da)+1);
mu_vp = vp(round((180+angles)/da)+1);

mu_sys = [mu_vn mu_n mu_z mu_p mu_vp];
output = mu_sys * y_sys;

figure;
plot(angles(1:end-1),output(1:end-1))
xlabel("Angle (degrees)");
ylabel("Action");
title("Angle vs control action");