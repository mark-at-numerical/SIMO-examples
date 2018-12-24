% Newton's interpolating polynomial.

function p = newtonPoly(a, xData, x)

n = length(xData);
p = a(n);
for k = 1:n-1;
    p = a(n-k)+(x-xData(n-k))*p;
end