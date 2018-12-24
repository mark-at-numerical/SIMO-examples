% The dual simplex algorithm for solving the following problem:

% max c'*x
% s.t.
% Ax = b,
%  x => 0.

function [x,z,indb]=dual_simplex(Abar, b, cbar, indb,niter)

optimal=0;
iter=0;
while ~optimal
    iter=iter+1;
    % nonbasic
    indnb=[];
    for i=1:length(Abar)
        if ~any(eq(i, indb))
            indnb=[indnb i];
        end
    end
    disp(['Iteration: ' int2str(iter)])
    
    [optimal,indb]=dual_simplex_iteration(Abar,b,cbar,indb,indnb);
    B=Abar(:,indb);
    x=zeros(size(Abar,2),1);
    xb=inv(B)*b;
    x(indb')=xb;
    z=x'*cbar;
    disp(['Iterate x = ' num2str(x')]);
    if iter>=niter
        break;
    end
end
