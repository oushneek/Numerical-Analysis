clear all
m = input('Order of polynomial = ');
n = input('Number of data points = ');
if n<m+1
    disp('Regression is impossible!!!');
    break;
elseif n>=m+1
    coefficient_a_b=0;
    x=input('x array = ');
    y=input('y array = ');
    plot(x,y,);
    % FINDING THE COEFFICIENTS OF a() and b()
    
    for i=1:m+1
        for j=1:i
            k=i+j-2;
            sum=0;
            for l=1:n
                sum=sum+(x(l).^k);
            end
            coefficient_a_b(i,j)=sum;
            coefficient_a_b(j,i)=sum;
        end
        sum=0;
        for l=1:n
            sum=sum+y(l)*(x(l).^(i-1));
        end
        coefficient_a_b(i,m+2)=sum;
    end
    
     %  FINDING SQUARE MATRIX OF COEFFICIENTS OF a AND b() 
     
     for i=1:m+1
         for j=1:m+1
             coeff_a(i,j)=coefficient_a_b(i,j);
         end
         b(i)=coefficient_a_b(i,m+2);
     end
     d= det(coeff_a);
     %disp(d);
     
    
     % FINDING a() USING CRAMER'S RULE
     for i=1:m+1     
         temp_A=coeff_a;
   
          % INTERCHANGING EACH COLUMN WITH b()
         for j=1:m+1
             temp_A(j,i)=b(j);     
         end
%          disp('temp_A=');
%          disp(temp_A);
         d_A=det(temp_A);
         a(i)=d_A/d;
     end
    disp(a);            
end