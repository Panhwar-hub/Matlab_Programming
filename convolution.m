function y=convolution(h,x);
%h=[1 4 6 7];
%x=[5 6 7 3];
y=zeros(1,(size(x,2)+size(h,2)-1));
summation=zeros(1,(size(x,2)+size(h,2)-1));
for n=1:1:(size(x,2)+size(h,2)-1)
    xindex=n;
    hindex=1;
    
    for b=1:1:n
        hindex=b;
        if xindex>size(x,2)
            xindex=xindex-1;
  critical
           continue
        elseif hindex>size(h,2)
  critical 
        xindex=xindex-1;
        else
         summation(b)=x(index)*h(index);
         xindex=xindex-1;
        end
    end
    y(n)=sum(summation);
    summation=zeros(1,(size(x,2)+size(h,2)-1));
    disp(y)