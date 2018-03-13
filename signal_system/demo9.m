syms t;%定义一个符号变量x,后续可以做一些符号操作
f='u(t)-u(t-2)'+(1+t)*'u(t+1)-u(t)';
subplot(2,2,1);
ezplot(f,[-2,3]);
axis([-2 3 -0.2 1.2]);title('f(t)');
grid on;
f1=subs(f,t,t+5);%subs符号计算函数，用t+5代替t返回f
subplot(2,2,2);
ezplot(f1,[-7,-2]);
axis([-7 -2 -0.2 1.2]);%axis([XMIN,XMAX,YMIN,YMAX])
title('f(t+5)');grid on;
f2=subs(f,t,-t+5);
subplot(2,2,3);ezplot(f2,[2,7]);
axis([2 7 -0.2 1.2]);title('f(-t+5)');grid on;
f3=subs(f,t,-2*t+5);
subplot(2,2,4);ezplot(f3,[-1,4]);
axis([-1 4 -0.2 1.2]);title('f(-2t+5)');grid on;
