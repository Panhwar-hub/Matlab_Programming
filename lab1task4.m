t=1:0.01:10;
x=cos(pi*t);
x1=sin(t);
x2=cos(t);
x3=csc(2*pi*t);
% subplot(4,1,1);
plot(t,x,'Red',t,x1,'Blue',t,x2,'Black',t,x3,'Green');
title 'Parvez 033-18-0034'
xlabel 'Time'
ylabel 'Amplitude'
legend('Cos(pi*t)','sin(t)','cos(t)','csc(2*pi*t)');

subplot(4,1,2);
plot(t,x1);

subplot(4,1,3);
plot(t,x2);

subplot(4,1,4);
plot(t,x3);
