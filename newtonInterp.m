% Newton's method for interpolation.

function y = newtonInterp(xData, yData, x)

a=newtonCoeff(xData, yData);
for k=1:length(x)
    y(k)=newtonPoly(a, xData, x(k));
end