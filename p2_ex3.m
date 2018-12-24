% Parametric curve

disp('2D plot, Example 3:')

t=linspace(0,2,200);
x=sin(7*pi*t);
y=cos(5*pi*t);
plot(x,y)
title('Parametric curves')
xlabel('x=sin(7*pi*t), for 0<=t<=200')
ylabel('y=cos(5*pi*t), for 0<=t<=200')
xlim([-1.5 1.5])
ylim([-1.5 1.5])