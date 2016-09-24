% Gauss Elimination
a=input('A [a11 a12;a21 a22] : ');
b=input('B [b1;b2] : ');

n=length(b);
for i=1: 1: n
    x(i)=0;
end

% Forward ELimination

for k= 1: 1: n-1
    for i=k+1: 1: n
        factor=a(i,k)/a(k,k);
        for j= k+1: 1: n
             a(i,j)= a(i,j)- (factor*a(k,j));
        end
       b(i)=b(i)-b(k)*factor;
    end
end


%back Substitution

x(n)=b(n)/a(n,n);

for i=n-1: -1: 1
    sum=b(i);
    for j=i+1:n
        sum=sum-(a(i,j)*x(j));
    end
    x(i)=sum/a(i,i);
end
x