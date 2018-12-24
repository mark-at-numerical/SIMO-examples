% lagrangePoly.m
% Enter your code here.

% x is a vector of x values at which the lagrange polynomial is to be interpolated.
% xData and yData are data points to be interpolated

function  lp=lagrangePoly(xData, yData,x)

lp=0;
for i=1:length(xData)
    lp=lp+yData(i)*fundamentalPoly(xData,x,i);
end