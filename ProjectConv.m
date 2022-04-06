x=input('enter the input signal');
h=input('enter the response signal');
%clear all;
%h=hn1;
%x=xn1;

y=flip(h);
len_out=length(x)+length(h)-1;
x_zeros=len_out-length(x);
y_zeros=len_out-length(y);

temp_x= horzcat(zeros(1,x_zeros),x)';
temp_h=horzcat(y,zeros(1,y_zeros))';
mul =0;
out=zeros(1,len_out);
for i=1:len_out
    if(i==1)
        mul =temp_x.*temp_h;
        out(i)=sum(mul);
    else
        temp_h=circshift(temp_x,1);
        mul =temp_x.*temp_h;
        out(i)=sum(mul);
    end
end

disp(out)
