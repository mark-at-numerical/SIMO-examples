% Finding annual interest rate by bisection.

% p0 initial principal
% pn final principal
% m number of compounding periods per year
% T number of years
% A monthly deposit
% W monthly withdrawal
% iLB lower bound on interest rate
% iUB upper bound on interest rate

function a = interest_rate(p0, pn, m, T, A, W, iLB, iUB)

a = iLB;
b = iUB;
fa = balance(p0, a, m, T*m, A, W)-pn;
fb = balance(p0, b, m, T*m, A, W)-pn;

if fa > 0 | fb < 0
    error('Invalid lower or upper bounds of i')
    return
end

disp('Starting bisection method ...')
iter = 0;
maxIter = 100;
tol = 1e-6;
while abs(b - a) > tol & iter < maxIter
    iter = iter + 1;
    disp(['Iteration ' int2str(iter)])
    mpt = (a + b) / 2;
    fm = balance(p0, mpt, m, T*m, A, W)-pn;
    if fa * fm < 0
        % [a,m] contains a root
        b = mpt;
    else
        % [m,b] contains a root
        a = mpt;
        fa = fm;
    end
end
disp('... done')