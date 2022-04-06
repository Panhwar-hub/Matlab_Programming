f=0.5;

w=2*pi*f;
t=-5:0.01:5;
b = 2;

x = sawtooth(w*t); 
x1 = sawtooth(w*b*t);

b=0.5;
x2 = sawtooth(w*b*t); 

plot(t, x, 'red', t, x1,'green', t, x2, 'blue');
title 'Parvez 033-18-0034 compression version'
legend ('actual','compressed','expanded');
axis([-3 3 -2 2]);

t=-3:0.01:3;
x = exp(t);
xrev= exp(-t);
plot(t, x, 'red', t, xrev, 'blue');
title 'Parvez 033-18-0034 reversed version'
legend ('actual','reversed');
axis([-3 3 0 5]);

t=-3:0.01:3;
t1 = 1;
a=3;
x = exp(-a*t);
x1 = exp(-a*(t-t1));
x2 = exp(-a*(t+t1)); 
plot(t, x, 'red', t, x1, 'green', t, x2, 'blue');
title 'Parvez 033-18-0034 delay and advance'
legend ('actual','delayed','advanced');
axis([-3 3 0 5]);

