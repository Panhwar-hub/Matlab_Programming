function wave=sin(f,x)
disp('generating sin wave according given frequecny and line space');
t=0:0.01:x;
s=sin(f.*t);
plot(s,t)