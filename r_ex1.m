% Finding a root of -2 + 2x + x^2 within the interval [-3, -1] using a bisection method.

disp('Root finding, Example 1:')

coeff=[-2 2 1];
tol = 1e-6;
a = -3; b = -1;
r = bisection(coeff, a, b, tol);

% display results
disp('Finding roots of -2 + 2x + x^2 in [-3,-1].')
disp(['Root found is ' num2str(r) ' with function value ' num2str(polynomial(coeff, r)) '.'])

disp('The polynomial is plotted for result checking.')

x = [a:0.02:b];
plot(x, polynomial(coeff, x))
xlabel('x')
ylabel('y(x)=-2 + 2x + x^2')
yticks(0)
xticks(r)
title('Root finding')
