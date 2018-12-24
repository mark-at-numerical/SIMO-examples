% Parametric surface

disp('Surface plot, Example 5:')

t=linspace(0,20,150);
u=linspace(-1,1,50);
[T,V]=meshgrid(t,u);
surf(T,V.*cos(T),V.*sin(T))
title('Parametric surface')