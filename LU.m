% LU Decomposition 

a = input('Matrix a : ');
b = input('Matrix b : ');
n = length(b);
for i=1: 1: n
    x(i)=0;
end

[a b] = SUB_Decompose(a,b,n);
b
[a b x ] = SUB_Substitute(a,b,x,n);
b
x