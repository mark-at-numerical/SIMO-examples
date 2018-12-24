% Finding a root of polynomial enclosed by the interval [a,b].

% coeff = [a0 a1 ... an] is a vector of the polynomial coefficients.
% tol controls the accuracy of the root obtained.

function mpt = bisection(coeff, a, b ,tol)

if a >= b
    error('b should be larger than a')
end

fa = polynomial(coeff, a);
fb = polynomial(coeff, b);

if fa * fb > 0
    error('f(a) and f(b) cannot have the same signs')
end

while abs(b - a) > tol
    mpt = (a + b) / 2;
    fm = polynomial(coeff, mpt);
    if fa * fm < 0
        % [a,m] contains a root
        b = mpt;
    else
        % [m,b] contains a root
        a = mpt;
        fa = fm;
    end
end
    