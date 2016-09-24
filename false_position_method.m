%False Position method final

f_input=input('Function: ','s');
f=inline(f_input);
xl=input('Lower Limit(xl): ');
xu=input('Upper Limit(xr): ');
es=input('Accepted Error(es>ea): ');
imax=input('Maximum Iteration: ');
ea=100;
iter =0;
fl=f(xl);
fu=f(xu);
xr=0;
disp('Result (False Position Method):');
while iter<=imax && ea>es
    xrold=xr;
    xr=xu-(fu*((xl-xu)/(fl-fu)));
    fr=f(xr);
    iter=iter+1;
    if xr~=0
        ea=abs(((xr-xrold)/xr)*100);
    end
    result=sprintf('%d. xl = %f xu = %f xr = %f ea = %f',iter,xl,xu,xr,ea);
    disp(result);
    test=fl*fr;
    if test<0
        xu=xr;
        fu=fr;
    elseif test>0
        xl=xr; 
        fl=fr;
    else
        ea=0;
    end
    
end