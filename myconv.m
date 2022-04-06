function convolution=myconv(a,b)
x=a;        
h=b;
l1=length(h);       %length of the impulse response
l2=length(x);       %length of the input
total_len=l1+l2-1;  %total esitmated length of the output
X=[x,zeros(1,l1)];  %creating a empty array for concatenating the values of x
H=[h,zeros(1,l2)];  %creatign empty array of size l2 to concatenate values of h
   %outer loop for total length
for i=1:total_len   
    y(i)=0;   %initializing the output
   %inner loop for concatenation
    for j=1:l2  
        % if the value is not zero convolution works 
        if(i-j+1>0)  
            y(i)=y(i)+X(j).*H(i-j+1)  % adding the convolution sum into the variable y
        else 
        end
    end
end
disp(y);
subplot(3,1,1)
stem(x,'red')    % ploting the input
title 'Parvez 033-18-0034'
legend 'x(n)'
subplot(3,1,2)    
stem(h,'red')    %ploting the impulse responce
legend 'h(n)'
subplot(3,1,3)
stem(y,'red')    %ploting the ouput of convolution.
legend 'y(n)'
title 'Ouput convolution of two signals'
xlabel '----n'
ylabel '----t'
end
