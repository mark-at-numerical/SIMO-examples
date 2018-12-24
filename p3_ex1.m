% Parametric surface

disp('Surface plot, Example 1:')

t=linspace(0, 2*pi, 100);
s=linspace(0, pi, 100);
[T,S]=meshgrid(t,s);
R=2+sin(7*S+5*T);
X=R.*cos(S).*sin(T);
Y=R.*sin(S).*sin(T);
Z=R.*cos(T);
surf(X,Y,Z)
title('Parametric surface')