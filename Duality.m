function f=Duality(s)  %userdefined function with input argument s(amount of shift)
syms t w               %symbolic variables used for fourier transform
shift=-t-s;            %shift and time reversal used below
disp 'This program proofs shifting and duality propery of fourier transform '
disp 'You can choose to see the graph of any of them one by one'
choice=input('Enter 1: for shifting graph and 2: for duality graph :-');
switch choice          %switch choice choosed by user
     case 1            
f=cos(2.*pi.*t).*heaviside(t);  %generating a time dmain signal
fs=cos(2.*pi.*shift).*heaviside(shift);  %shifting time domain signal
subplot(2,2,1)
ezplot(f)              %ploting time domain signal
xlabel('t'); ylabel('x_1(t)');title 'original signal' ; legend 'Parvez Ali'
subplot(2,2,3)
xw=fourier(f,t,w);     % taking fourier transform of orignal time domain signal
ezplot(angle(xw))      % ploting phase angle only to see effect of phasor multiplied
xlabel('\Omega'); ylabel('X_1(\omega)'); title 'FT of original signal' ; legend 'Parvez Ali'
subplot(2,2,4)
xw1=fourier(fs,t,w);   %taking fourier transform of shifted signal
ezplot(angle(xw1))     %ploting the angle which show phasor multiplied
xlabel('\Omega'); ylabel('X_1(\omega)');
title 'FT of shifted & reversed signal phaser is multiplied' ; legend 'Parvez Ali'
subplot(2,2,2)
ezplot(fs)             %ploting shifted/reversed version of signal
xlabel('t'); ylabel('x_1(t)');title 'shifted & reversed version of orignal signal' ; legend 'Parvez Ali'
  
    case 2
f=10.*cos(2.*pi.*shift);% using above shifted version of signal  
FT=fourier(f);          %fourier transform of shifted signal
IFT=ifourier(2*pi*f);   %inverse fourier transform of signal
subplot(2,2,1)
ezplot(f,[-1,1]);       %ploting orignal function
axis([-1 1 -15 15]);
xlabel('t'); ylabel('x_1(t)'); legend 'Parvez'
subplot(2,2,2)
ezplot(FT,[-100,100]);  %ploting fourier transform of signal
axis([-100 100 -3 11])
xlabel('\Omega'); ylabel('X_1(\omega)'); legend 'Parvez Ali'
subplot(2,2,3)
ezplot(IFT,[-100,100]); %ploting inverse fourier transform of signal
axis([-100 100 -3 11]);
xlabel 't'; ylabel 'x(t)=X_1(t)'; legend 'Parvez Ali'
subplot(2,2,4)
ezplot(2*pi*f,[-1,1]);  %ploting transformed signal back to time domain
axis([-1 1 -100 100]);
xlabel('\Omega'); ylabel('X_1(\omega)'); legend 'Parvez Ali'
    otherwise           %if wrong choice is choosed 
        disp 'wrong input please give correct choice'
end                     %end of switch case
end                     %end of userdefined function