% Solving the following linear programming problem by the dual simplex method:

% max -3x1 - 2x2 - x3
% s.t.
% -3x1 - x2 - x3 <= -3
% 3x1 - 3x2 - x3 <= -6
% x1 + x2 + x3 <= 3
% x1, x2, x3 => 0.

disp('Linear programming, Example 2:')

c=[-3 -2 -1]';
A=[-3 -1 -1;
3 -3 -1;
1 1 1];
b=[-3 -6 3]';
indb=[4 5 6];


% Adding slack variables to get the standard form:

% max -3x1 - 2x2 - x3
% s.t.

% -3x1 - x2 - x3 + x4 = -3
% 3x1 - 3x2 - x3 + x5 = -6
% x1 + x2 + x3 + x6 = 3
% x1, x2, x3, x4, x5, x6 => 0.

m=size(A,1);
Abar=[A eye(m)];
cbar=[c; zeros(m,1)];

% The dual simplex algorithm

[x,z,indb]=dual_simplex(Abar, b, cbar, indb, 5);

if sum(abs(Abar*x-b))<1e-7
    disp('All contraints satisfied.')
end
