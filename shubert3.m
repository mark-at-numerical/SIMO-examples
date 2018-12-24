% Shubert III function.

function f = shubert3(x, y)

a = 0;
for j = 1:5
    a = a + j * cos((j + 1) * x + 1);
end

b = 0;
for j = 1:5
    b = b + j * cos((j + 1) * y + 1);
end

f = a .* b + (x + 1.42513).^2 + (y + 0.80032).^2;
