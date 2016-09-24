x=input('Array x = ');
y=input('Array y = ');
n=input('Number of data points = ');
sumx=0;
sumy=0;
sumxy=0;
sumx2=0;
st=0;
sr=0;
for i=1:n
    sumx=sumx+x(i);
    sumy=sumy+y(i);
    sumxy=sumxy+(x(i)*y(i));
    sumx2=sumx2+(x(i).^2);
end
xm=sumx/n;
ym=sumy/n;
a1=((n*sumxy)-(sumx*sumy))/((n*sumx2)-(sumx*sumx));
a0=ym-a1*xm;
a0
a1

for i=1:n
    st=st+(y(i)-ym).^2;
    sr=sr+(y(i)-a1*x(i)-a0).^2;
end
syx=(sr/(n-2)).^0.5;
r2=(st-sr)/st;

disp('S(y/x) = ');
disp(syx);
disp('r^2 = ');
disp(r2);
for i=1:n
    a(i)=x(i);
    b(i)=a0+a1*x(i);
end

plot(x,y,'o'); hold on;
plot(a,b);