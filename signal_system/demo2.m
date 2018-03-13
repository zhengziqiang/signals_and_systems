t=0:0.01:10;
f1='exp(0.4*t)*cos(8*t)';
f2='exp(0.4*t)*sin(8*t)';
figure(1)
ezplot(f1,t);
grid on;
figure(2)
ezplot(f2,t);
grid on;
