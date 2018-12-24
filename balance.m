% Finding account balance with
% initial balabce, p0,
% annual interest rate, i,
% number of compounding per year, m,
% total number of compounding period, n,
% savings per period, A,
% withdrawal per period, W.

function pk = balance(p0, i, m, n, A, W)

pk = p0;
for k=1:n
    pk = pk*(1+i/m)+A-W;
end
