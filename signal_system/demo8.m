n=-50:50;
figure(1)
x1=cos(pi/6*n);stem(n,x1);
title('cos(n\pi/6) 实部');
figure(2)
x2=sin(pi/6*n);
stem(n,x2);%绘制函数，横坐标是你n,纵坐标是x2
title('sin(n\pi/6) 虚部');
figure(3)
x3=cos(3*n);stem(n,x3);
title('cos(3*n) 实部');
figure(4)
x4=sin(3*n);stem(n,x4);
title('sin(3*n) 虚部');
