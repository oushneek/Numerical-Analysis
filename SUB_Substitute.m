function [a b x ] = SUB_Substitute(a,b,x,n)


% forward Substitution

    for i=2:1:n
        sum=b(i);
        for j=1:1:i-1
           sum = sum - a(i,j)*b(j);
        end
        b(i)=sum;
    end

    %backward Substitution

    x(n)=b(n)/a(n,n);
    for i=n-1:-1:1
        sum=0;
        for j=i+1:1:n
             sum=sum+a(i,j)*x(j);
        end
         x(i)=(b(i)-sum)/a(i,i);
    end
end
