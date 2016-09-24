%example 6.3
syms x;
f_input=input('Enter Function : ');
f = inline(f_input);
g1 = diff(f_input,x);
g = inline(g1);
%disp(g);
xr=input('Initial(xr): ');
es=input('Accepted Error(es>ea): ');
imax=input('Maximum Iteration: ');

ea=100;
iter=0;
disp('Result (Newton-Raphson Method):');
while iter<imax && ea>es
    xrold=xr;
    xr=xrold-(f(xrold)/g(xrold));
    iter=iter+1;
    if xr~=0
        ea=abs(((xr-xrold)/xr)*100);
    end
    result=sprintf('%d. xr = %f ea = %f',iter,xr,ea);
    disp(result);
end
