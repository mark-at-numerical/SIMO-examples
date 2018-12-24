% Solving the following linear programming problem by the simplex method:

% max 5x1 + 2x2 - 12x3
% s.t.
% 3x1 + 2x2 + x3 = 10
% 5x1 + 3x2 + x4 = 16
% x1, x2, x3, x4 => 0

disp('Linear programming, Example 1:')

A=[3 2 1 0
5 3 0 1];
b=[10;16];
c=[5; 2; -12; 0];

%initial basic variable indexes

indb=[3 4];

% The simplex algorithm

[x,z,indb]=simplex(A, b, c, indb);

disp(['Optimal solution = ' num2str(x')])

disp(['Optimal value = ' num2str(z')])

disp(['Optimal basis = ' num2str(indb)])