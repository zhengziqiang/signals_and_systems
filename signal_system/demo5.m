function y=u(t) 
y=t>=0;

t=0:0.01:2;
f='5*(u(t-1)-u(t-1.2))';
ezplot(f,t);
grid on;
axis([0 2 -1 6]);
