% lagrangePoly.m
% Enter your code here.
function lp=fundamentalPoly(xdata,x,j)

% This function evaluates the j-th fundamental polynomial
% in a lagrange polynomial which interpolates n data points.
% x is a vector of x values at which lp is evaluated.
% xdata contains the x values of the data points to be interpolated.
% n is the total number of data points

xdataj=xdata(j);
xdata(j)=[];

for i=1:length(x)
    lp(i)=prod(x(i)-xdata)/prod(xdataj-xdata);
end