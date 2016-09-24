f_input=input('Function : ','s');
f=inline(f_input);
a=input('Lower limit = ');
b=input('Upper limit = ');
n=input('Number of segments = ');

sum=f(a);
h=(b-a)/n;
xi=a;
for i=1:n-1
   xi=xi+h;
   c=f(xi);
   m=mod(i,2);
   if m==0
       sum=sum+(2*c);
   else
       sum=sum+(4*c);
   end
end

sum=sum+f(b);
sum
simp=(b-a)*((sum)/(3*n));
simp

