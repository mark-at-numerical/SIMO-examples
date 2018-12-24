% Lagrange's method for polynomial interpolation.
% xData and yData are (x,y) coordinates of data points to be interpolated.
% x and y are vectors containing (x,y) coordinates on the interpolating polynomial.

disp('Interpolation, Example 2:')

n=8;
xData=rand(1,n);
yData=rand(1,n);

x = linspace(min(xData),max(xData));

lp=lagrangePoly(xData,yData,x);

scatter(xData,yData)
hold('on')
plot(x,lp)
hold('off')
legend('Data points','Interpolating polynomial')