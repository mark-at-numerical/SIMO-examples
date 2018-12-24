% Sinc functions

disp('2D plot, Example 2:')

x=linspace(-10*pi,10*pi,200);
y=sin(x)./x;
u=sin(2*x)./(2*x);
plot(x,y,'d-','MarkerFaceColor','m')
hold('on')
plot(x,u,'--')
xlabel('x')
legend('sin(x)/x','sin(2*x)/(2*x)')
title('Sinc functions')
ylim([-0.3 1.2])
hold('off')