% Bisection method final

f_input=input('Function: ','s');
f=inline(f_input);
xl=input('Lower Limit(xl): ');
xu=input('Upper Limit(xr): ');
es=input('Accepted Error(es>ea): ');
imax=input('Maximum Iteration: ');
iter=0;
ea=100;
xr=0;
disp('Result (Bisection Method):');
 while iter<imax && ea>es
    xrold=xr;
    xr=(xl+xu)/2;
    iter=iter+1;
    if xr~= 0
        ea=abs(((xr-xrold)/xr)*100);
    end
    result=sprintf('%d. xl = %f xu = %f xr = %f ea = %f',iter,xl,xu,xr,ea);
    disp(result);
    fxl=f(xl);
    fxr=f(xr);
    test=fxl*fxr;
    if test<0
        xu=xr;
    elseif test>0
        xl=xr;
    else
        ea=0; 
    end
    
 end
 