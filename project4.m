clc
clear all
close all
x=input('Enter the first sequence: ');
l1=input('Enter the lower limit: ');
u1=input('Enter the upper limit: ');
x1=l1:1:u1;
h=input('Enter the second sequence: ');
l2=input('Enter the lower limit: ');
u2=input('Enter the upper limit: ');
h1=l2:1:u2;
l=l1+l2;
u=u1+u2;
n=l:1:u;
s=numel(n);
i=1;
for i=1:s
y(i)=0;
for k=1:numel(x)
if (i+1-k)<=0
y(i)=y(i)+(x(k)*0);
else if (i+1-k)>numel(h)
y(i)=y(i)+(x(k)*0);
else
y(i)=y(i)+(x(k)*h(i+1-k));
k=k+1;
end
end
end
i=i+1;
end
disp(y);
subplot(2,2,1);
stem(x1,x);
title('First sequence');
xlabel('n');ylabel('x(n)');
subplot(2,2,2);
stem(h1,h);
title('Second Sequence');
xlabel('n');ylabel('h(n)');
subplot(2,2,[3 4]);
stem(n,y);
title('Convoluted sequence');
xlabel('n');ylabel('y(n)');



X = input('Enter x: '); %input vector X and H
H = input('Enter h: ') ;
LenX = length(X); %defining their lenghts
LenH = length(H);
y = zeros(1,LenX+LenH); %defing vector y of zeroes and of size
% lenth of X + length of H
t = zeros(1,LenH); % definign a vector t of same length as H
for i = 1:LenH+LenX-1 % Running a for loop from 1 to length of Y -1
if i<=LenX % till I IS Lesser then length of X i.e overlap about to begin
t(1)= X(i); % put x(i) on t(1) later it is shifted forwards in the vector t i.e. later t(2)=t(1)

for j = 1:LenH % in the if condition a for loop from 1 to length of H
y(i) = y(i) + H(j)*t(j); % summing for all H(j)*t(j) and putting it at y(1) or y(2) or Y(i) in first iteration
% i.e. for i=1 only firt multiplication would
% be non zero rest all zeroes.
end

for k = LenH:-1:2 % shifting old value of t(i) to t(i+1) now there would me 1+ non zeroes values in t
% this cycle would continue until i is lesser then
% length X i.e. overlap increasing every iteration less
% and less non zero vales in t every iteration
t(k) = t(k-1);
end

else % now when all of the T is non zero which means 100% overlap in else overlap would start to decrease between T and H
% T is basically X
t(1)= 0;
for j = 1:LenH % Now we start filling up Zeroes in T i.e. overlap began to decrease now and each iteration it would decrease
% i.e T moving to left until there is no more
% over lap
y(i) = y(i) + (H(j)*t(j)); % in this for loop we multiply all respective vales of h and t and add the
% putting it at y(1) or y(2) or Y(i) in first iteration
end

for k = LenH:-1:2 %% here just like similar loop above t where we were filling up t with vales of x
%now we are filling up zeroos in t i.e. over lap decreasing
t(k) = t(k-1);
end

end

end

ly=length(y)
indices=[ly]
for i=1:ly
indices(i)=i;
end
disp (y); %displays vector y.

disp (indices); % displays vector indices.

stem(y);
ylabel('Y[n]');
xlabel('[n]');
title('Convolution without conv function');