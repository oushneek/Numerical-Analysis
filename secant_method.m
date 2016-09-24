% Secant method Final
%input 
f_input=input('Function: ','s');
f=inline(f_input);
x1=input('x(i-1): ');
x2=input('x(i): ');
es=input('Accepted Error(es>ea) : ');
imax=input('Maximum Iteration: ');

%declare
iter=0;
xr=0;
xr_old=0;
ea=100;

%calculation
while iter<imax && ea>es
    iter=iter+1;
    xr_old=xr;
    
    numerator=f(x2)*(x1-x2);
    denominator=f(x1)-f(x2);
    xr=x2-(numerator/denominator);
    if xr~=0
        ea=abs((xr-xr_old)/xr)*100;
    end
    result=sprintf('%d. x(i-1)=%f x(i)=%f x(i+1)=%f ea=%f',iter,x1,x2,xr,ea);
    disp(result)
    x1=x2;
    x2=xr;
end
    
        
    