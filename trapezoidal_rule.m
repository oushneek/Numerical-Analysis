f_input=input('Function : ','s');
f=inline(f_input);
n=input('Number of segments ,n = ');
a=input('Lower limit of integration = ');
b=input('Upper limit of integration = ');
c=b-a;
sum=f(a);
xi=a;
h=c/n;
for i=1:n-1
    xi=xi+h;
    sum=sum+2*f(xi);
end
sum=sum+f(b);
trap=h*(sum/2);
trap
