function dconv(x1,x2,k1,k2) 
x3=conv(x1,x2);
ks=k1(1)+k2(1);
ke=k1(end)+k2(end);
k=length(k1)+length(k2)-1;
k3=linspace(ks,ke,k);
subplot(2,2,1) 
stem(k1,x1) 
title('x1[n]') 
xlabel('n') 
ylabel('x1[n]') 
subplot(2,2,2) 
stem(k2,x2)
title('x2[n]') 
xlabel('n') 
ylabel('x2[n]') 
subplot(2,2,3) 
stem(k3,x3);
h=get(gca,'position'); 
h(3)=2.5*h(3); 
set(gca,'position',h)
title('x[n]=x1[n]*x2[n]') 
xlabel('n') 
ylabel('x[n]')

