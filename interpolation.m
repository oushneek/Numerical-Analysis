f_input = input('Function ,f(x) =  ','s');
f=inline(f_input);
n=input('Order of the polynomial, n = ');
x=input('x array with n+1 elements = ');
xi=input('Interpolation at ');
for i=1:n+1
    fdd(i,1)=f(x(i));
end
for j=2:n+1
    for i=1:n-j+2
        fdd(i,j)=(fdd(i+1,j-1)-fdd(i,j-1))/(x(i+j-1)-x(i));
    end
end
disp(fdd);
% xterm=1;
% yint(1)=fdd(1,1);
% for order=2:n
%     xterm=xterm*(xi-x(order-1));
%     yint2=yint(order-1)+fdd(1,order)*xterm;
%     ea(order-1)=yint2-yint(order-1);
%     yint(order)=yint2;
% end
yint(1)=fdd(1,1);
xterm=1;
ylast=yint(1);
for order=2:n+1
    xterm=xterm*(xi-x(order-1));
    yint(order)=(fdd(1,order)*xterm);
    ylast=ylast+yint(order);
end
disp(yint);
disp(ylast);
