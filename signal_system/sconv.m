function sconv(f1,f2,k1,k2)
f3=conv(f1,f2);
ks=k1(1)+k2(1);
ke=k1(end)+k2(end);
k=length(k1)+length(k2)-1;
k3=linspace(ks,ke,k);
subplot(2,2,1)
plot(k1,f1)
title('f1(t)')
xlabel('t')
ylabel('f1(t)')
subplot(2,2,2)
plot(k2,f2)
title('f2(t)')
xlabel('t')
ylabel('f2(t)')
subplot(2,2,3)
plot(k3,f3);
h=get(gca,'position');
h(3)=2.5*h(3);
set(gca,'position',h)
title('f(t)=f1(t)*f2(t)')
xlabel('t')
ylabel('f(t)')
