function[m]=lab7task1(c,n)
tot=n;
f=c;
y=0;
a=0;
b=0;
c=0;
w=1*pi*f; 
t=-1:0.01:1; 
for n=1:tot    
    y= y + (1/n)*sin(n*w*t);    
end
for n=1:3    
    a= a + (1/n)*sin(n*w*t);    
end
for n=1:10    
    b= b + (1/n)*sin(n*w*t);    
end
for n=1:50    
    c= c + (1/n)*sin(n*w*t);    
end
subplot(2,2,1)
plot(t,y)
title('Parvez 033-18-0034') 
xlabel('Time')
ylabel('Fourier_Sawtooth wave') 
subplot(2,2,2)
plot(t,a)
title('term 3')
subplot(2,2,3)
plot(t,b)
title('term 10')
subplot(2,2,4)
plot(t,c)
title('term 50')