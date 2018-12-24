% The Shubert function.

disp('Surface plot, Example 3:')

[X, Y]=meshgrid(-10:.1:10);
Z = shubert3(X, Y);
surf(X,Y,Z)
title('Shubert function')