
function [a,b] = SUB_Decompose(a,b,n)
    for k= 1 : 1 : n-1
        for i = k+1 : 1 : n
            factor=a(i,k)/a(k,k);
            a(i,k)=factor;
            for j=k+1:1:n
                a(i,j)=a(i,j)-(factor*a(k,j));
            end
           % b(i) = b(i) - factor*a(k,j);
        end
    end
end