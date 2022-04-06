t= -10:0.01:10;
t1 = 1.5.*t;
t2=0.8.*t;
t3=t+3.6;
t4=((2.*t)-1);
x = t1./(t1.*t1 + 4);  
x1 = t2./(t2.*t2+ 4);
x2 = t3./(t3.*t3 + 4);  
x3 = t4./(t4.*t4 + 4);  
plot(t, x, 'red', t, x1, 'green', t, x2, 'blue',t,x3,'black');
title 'Parvez 033-18-0034 lab3task2'
legend('task2 #1','task2 #2','task2 #3','task2 #4');
axis([-4 8 0 0.4]);

 
