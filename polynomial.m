% Evaluating polynomial of order n:

% y = a0 + a1*x + a2*x^2 + ... + an*x^n

% coeff = [a0 a1 ... an] contains the coefficents of the polynomial.

function y = polynomial(coeff, x)

y = 0;
for i = 1:length(coeff)
    y = y + coeff(i) * x.^(i - 1);
end