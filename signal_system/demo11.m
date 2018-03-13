t=-1:0.01:3;
f1=(1+t).*(0.5*sign(t)-0.5*sign(t-1));
f2=(0.5*sign(t-1)-0.5*sign(t-2));
sconv(f1,f2,t,t);
