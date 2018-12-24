% Newton's method for polynomial interpolation.
% xData and yData are (x,y) coordinates of data points to be interpolated.
% x and y are vectors containing (x,y) coordinates on the interpolating polynomial.

disp('Interpolation, Example 1:')

n=8;
xData=rand(1,n);
yData=rand(1,n);

x = linspace(min(xData),max(xData));

y = newtonInterp(xData, yData, x);

scatter(xData,yData)
hold('on')
plot(x,y)
hold('off')
legend('Data points','Interpolating polynomial')