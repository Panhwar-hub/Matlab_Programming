%close all
%clear all
x=input('Enter x: ');
h=input('Enter h: ');
%x=xn;
%h=hn;
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)]; 
for i=1:n+m-1
  y(i)=0;
for j=1:m
if(i-j+1>0)
y(i)=y(i)+X(j)*H(i-j+1);
else
end
end
end
y
subplot(3,1,1)
stem(h);
title 'h(n)'
subplot(3,1,2)
stem(x);
title 'x(n)'
subplot(3,1,3)
stem(y);
title('Y[n]');
