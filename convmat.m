
x1=[1 2 3 4 5];
x2=[6 7 8 9 10];
lengthofx1=length(x1);
lengthofx2=length(x2);
X1=[x1,zeros(1,lengthofx2)];
X2=[x2,zeros(1,lengthofx1)];
for k=1:(lengthofx1+lengthofx2-1)
w(k)=0;
for j=1:lengthofx1
if(k-j+1)>0
w(k)=w(k)+X1(j)*X2(k-j+1);
end
end
end
subplot(2,1,1)
%r=x1.*x2;
%f=abs(fft(r));
f=conv(x1,x2);
stem(f)
title('fourier transform of two multiplied signals')
subplot(2,1,2)
a1=abs(fft(x1));
a2=abs(fft(x2));
b=a1.*a2;
stem(b)
title('convolution of two fourier transformed signals')
