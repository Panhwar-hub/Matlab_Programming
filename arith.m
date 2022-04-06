function [add,sub,mul]=arith(x,y)

add=a(x,y);             %addition function is called and defined inside main function
function a1=a(x,y)	
a1=x+y;
sub=s(x,y);		%subtraction is called inside addition function
end

function s1=s(x,y)	%subtraction is defined inside main function
s1=x-y;
mul=m(x,y);		%multiplication is called inside subtraction function
end

end



function m1=m(x,y)	%multiplication is defined outside of main function
m1=x*y;
end
