% Surface plot of 2-variable sinc function.

disp('Surface plot, Example 2:')

x=[-8:.2:8];
y=x;
[X,Y]=meshgrid(x,y);
R=sqrt(X.^2+Y.^2)+0.001;
Z=sin(R)./R;
surf(X,Y,Z)
zlim([0 1])
title('Bivariate sinc with zlim=[0 1]');