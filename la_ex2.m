% LU decomposition of matrix V.

disp('Linear algebra, Example 2:')

V=[1 1 1 1 1 1
    2.48832 2.0736 1.728 1.44 1.20 1
    5.37824 3.8416 2.744 1.96 1.4 1
    10.48576 6.5536 4.096 2.56 1.6 1
    18.89568 10.4976 5.832 3.24 1.8 1
    32 16 8 4 2.0 1];
 
[L,U]=LUdec(V)