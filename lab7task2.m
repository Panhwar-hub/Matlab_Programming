function[m]=lab7task2(f,n)
subplot(2,2,1)
y=0
w=2*pi*f;
t=0:0.01:2; 
terms=1
for n=1:2:n*terms
    y= y + (1/n)*sin(n*w*t);    
end
plot(t,y)
title('parvez ali')
legend 'term 1'
xlabel('Time')
ylabel('Fourier Square wave')
 
subplot(2,2,2)
f=1;
y=0
w=2*pi*f;
t=0:0.01:2; 
terms=3
for n=1:2:n*terms 
y= y + (1/n)*sin(n*w*t);    
end
plot(t,y)
title('Parvez Ali')
xlabel('Time')
legend 'term 3'
ylabel('Fourier Square wave')
 
subplot(2,2,3)
f=1;
y=0
w=2*pi*f;
t=0:0.01:2; 
terms=10
for n=1:2:n*terms    
    y= y + (1/n)*sin(n*w*t);    
end
plot(t,y)
title('Parvez ALi')
xlabel('Time')
legend 'term 10'
ylabel('Fourier Square wave')
 
subplot(2,2,4)
f=1;
y=0
w=2*pi*f;
t=0:0.01:2; 
terms=500
for n=1:2:n*terms
    y= y + (1/n)*sin(n*w*t);    
end
plot(t,y)
title('Parvez')
xlabel('Time')
legend 'term 500'
ylabel('Fourier Square wave')
