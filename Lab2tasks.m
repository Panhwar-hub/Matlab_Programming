Exe_1_a
%Generate a discrete-time triangular wave
A=1;%unity amplitude
fo=5;%frequency 10? radians per second (5 Hz)
w= 2*pi*fo;
theta=5*pi;%phase shift of 5? radians
t=0:0.001:1;    
y=A*sawtooth(w*t + theta);
stem(t,y);
title 'parvez 033-18-0034'

Exe_1_b
%(i) A cos (wt + ?)    (ii) A sin (wt + ?) ,
%where A = 4; w = 20? and ? = 30 degrees.
t=0:0.001:1;
A = 4;
w = 20*pi; 
theta=pi/6;
y1=A*cos(w*t+theta);
y2=A*sin(w*t+theta);
plot(t,y1,'blue',t,y2,'black')
ylabel('Amplitude');   
xlabel('Time Index');
title('parvez 033-18-0034');
legend('cosine wave','sin wave')

***********************************************

Exe_2_a
%x(t) = 5e-6t 
t=0:0.0001:2;
y=5*exp(-6*t);
plot(t,y);
ylabel('Amplitude');   
xlabel('Time Index');
legend('5e^(-6t)');
title 'parvez 033-18-0034'

Exe_2_b
% y(t) = 3e5t
t=3:0.0001:5;
y=3*exp(5*t);
plot(t,y);
ylabel('Amplitude');   
xlabel('Time Index');
legend('3e^(5t)');
title 'Parvez 033-18-0034'

Exe_2_c
%x[n] = 2(0.85)^n
n=0:5;
x=2*(0.85).^n;
stem(n,x);
axis([-1  5  0   3])
legend('x[n] = 2(0.85)^n')
title 'Parvez'

Exe_2_d
t=0:0.02:5;
x1=2*exp(-t);
x2=cos(2.5*pi*t);
x=x1 .* x2;
plot(t,x);
ylabel('Amplitude');   
xlabel('Time Index');
legend('2e^-t.cos(2.5?t)');
title('Parvez 033-18-0034')

Exe_2_e
% y[n] = 60 e-6n sin(20?n)
n=0:1:20;
x1=60.*exp(-6.*n);
x2=sin(20.*pi.*n);
x=x1 .* x2;
stem(n,x);
ylabel('Amplitude');   
xlabel('Time Index');
legend('2e^-t.cos(2.5?t)');
title 'Parvez 033-18-0034'

***********************************************

Exe_3_a_i
%Descrete Ramp Function
%50 samples
%x[n] =  n;
n=0:1:50-1;
x=n;
stem(n,x);
title('Parvez 033-18-0034')

Exe_3_a_ii
%Descrete Impulse Function
%50 samples
%x[n] =  n;
clear
clc
n=-24:1:25;%50 saamples
impulse=[zeros(1,24),ones(1,1),zeros(1,25)];%impulse function
stem(n,impulse);%ploting
legend('Impulse')
title 'Parvez 033-18-0034'

Exe_3_b
%Sinc Function
t=-5:0.001:5;
y=sinc(t);
plot(t,y);
ylabel('Amplitude Y');   
xlabel('Time Index t');
legend('Sinc Function');
title('Parvez')

Exe_3_c
%u[n] – u[n-5]
n = 0:1:5;
x = ones(1, length(n)); % we may also write ones(1,5)
%above x is unit step function
stem(n,x);%ploting Unit step function
axis([-1 6 -1 2])%SettingUp Axis
title('Parvez 033-18-0034')
legend('unit step ')
***********************************************

Exe_5_all
%Time Periods
T1=0.5;
T2=2;
T3=3;

%TimeIntervals
n1=0:T1:20;
n2=0:T2:20;
n3=0:T3:20;

x1=(4*n1)./(2+n1.^2);
x2=(4*n2)./(2+n2.^2);
x3=(4*n3)./(2+n3.^2);
subplot(3,1,1)
stem(n1,x1,'red');
 title ('Parvez 033-18-0034')
  legend 'T=0.5'
 subplot(3,1,2)
stem(n2,x2,'blue');
legend 'T=2'
subplot(3,1,3)
stem(n3,x3,'black');

legend('T=3')
%plot(n1,x1,n2,x2,n3,x3)

 title ('Parvez 033-18-0034')
