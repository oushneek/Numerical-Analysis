clear all
%entering matrices
A=[1 2 3;4 5 6; 7 8 9 ]

%sum
sum(A)
% transpose
A'

sum(A')
sum(A')'
sum((A')')

%diagonal

diag(A)
sum(diag(A))

% (fliplr)---flips a matrix left to right

A
fliplr(A)
A'
fliplr(A')
fliplr(A)
diag(fliplr(A))
sum(diag(fliplr(A)))
diag(fliplr(A))'

% subscripts
% A(row , column) starts from 1
A(1,1)+A(2,1)+A(3,1)

%increasing size of matrix

% A(3,4)=20
% X=A;
% X(3,4)=20;
%colon
1:10
100:-10:50

%colon in matrx

A
A(1:2,3)
sum(A(1:2,3))
A
sum(A(:,end))
sum(1:16)/4
%magic function
B=magic(4)
%swap two columns
A= B(:,[4 2 3 1])





















