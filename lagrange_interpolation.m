f_input=input('Function, f(x) = ','s');
f=inline(f_input);
n=input('Order of the polynomial = ');
x=input('x array with n+1 elements = ');
xx=input('Interpolate at ');

for i=1:n+1
    y(i)=f(x(i));
end

sum=0;
for i=1:n+1
    product=y(i);
    for j=1:n+1
        if i~=j
            product=product*(xx-x(j))/(x(i)-x(j));
        end
    end
    sum=sum+product;
end
disp(sum);
