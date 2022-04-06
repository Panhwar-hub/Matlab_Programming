function wave=sing(f,x)
disp('generating sin wave according given frequecny and line space');
t=0:0.01:x;
s=sin(f.*t);
plot(t,s)
title 'parvez ali 033-18-0034'
legend 'sin wave' 