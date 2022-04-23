% fuzzification
da      = 0.01;
angles  = -180:da:180;
w   = 30;

z       = zeros(length(angles),1);
p       = zeros(length(angles),1);
n       = zeros(length(angles),1);
vp      = zeros(length(angles),1);
vn      = zeros(length(angles),1);

% Zero class membership function
a1     = (180-w/2)/da:180/da;
z(a1)  = (1:length(a1))/length(a1);
a2     = 180/da:(180+w/2)/da;
z(a2)  = 1-(1:length(a2))/length(a2);

% Positive class membership function
a1     = (180)/da:(180+w/2)/da;
p(a1)  = (1:length(a1))/length(a1);
a2     = (180+w/2)/da:(180+w)/da;
p(a2)  = 1-(1:length(a2))/length(a2);

% Negative class membership function
a1     = (180-w)/da:(180-w/2)/da;
n(a1)  = (1:length(a1))/length(a1);
a2     = (180-w/2)/da:(180)/da;
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
y_sys = [2 1 0 -1 -2];

% Defuzzification factor:
Kdefuz  = 0.1;