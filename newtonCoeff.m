% Newton's method for interpolation.

function a=newtonCoeff(xData, yData)

n=length(xData);
a=yData;
for k=2:n
    a(k:n)=(a(k:n)-a(k-1))./(xData(k:n)-xData(k-1));
end