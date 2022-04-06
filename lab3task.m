f=1;
w=2*pi*f;
t=-1:0.01:1;
x=sin(w*t);
x1=sin(w*(t-0.2));
x2=sin(w*(2*t-0.2));
x3=sin(w*(0.5*t-0.2));
plot(t,x,'red',t,x1,'blue',t,x2,'green',t,x3,'black')
title 'Parvez 033-18-0034 Lab3 task'
legend ('actual','delayed','compressed','expanded')
axis ([-1 1 -1 1]);