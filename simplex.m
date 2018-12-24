% The simplex method for solving linear programming problem:

% max c'*x
% s.t.
% Ax= b,
%  x => 0,
% 
% indb: indices of initial basic variable

function [x,z,indb]=simplex(A, b, c, indb)

optimal=0;
i=0;
while ~optimal
    i=i+1;
    disp(['Iteration ' int2str(i)])
    [optimal, indb]=simplex_iteration(A, b, c, indb);
end

B=A(:,indb);
x=zeros(size(A,2),1);
xb=inv(B)*b;
x(indb')=xb;
z=x'*c;