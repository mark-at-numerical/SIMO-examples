% Solving Ax=b by Gaussian elimination and the built-in function inv().

disp('Linear algebra, Example 1:')

A=[6,-4,1;
-4,6,-4;
1,-4,6];

b=[-14;36;6];

disp('Solving Ax=b by Gaussian elimination:')
x=gauss(A,b)

disp('Solving Ax=b by the built-in inv() function:')
y=inv(A)*b