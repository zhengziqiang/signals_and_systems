n=-50:50;
figure(1)
x1=cos(pi/6*n);stem(n,x1);
title('cos(n\pi/6) ʵ��');
figure(2)
x2=sin(pi/6*n);
stem(n,x2);%���ƺ���������������n,��������x2
title('sin(n\pi/6) �鲿');
figure(3)
x3=cos(3*n);stem(n,x3);
title('cos(3*n) ʵ��');
figure(4)
x4=sin(3*n);stem(n,x4);
title('sin(3*n) �鲿');
