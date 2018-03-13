function y=u(t)
y=t>=0;
t=-3:0.01:3;
f='exp(t)*(u(6-3*t)-u(-6-3*t))';
ezplot(f,t);
grid on;
