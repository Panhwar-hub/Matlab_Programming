t=1:0.01:10;
x=cos(pi*t);
x1=sin(t);
x2=cos(t);
x3=cos(2*pi*t);
plot(t,x,'Red',t,x1,'Blue',t,x2,'Black',t,x3,'Green');
title 'Parvez 033-18-0034'
xlabel 'Time'
ylabel 'Amplitude'
legend('Cos(pi*t)','sin(t)','cos(t)','cos(2*pi*t)');