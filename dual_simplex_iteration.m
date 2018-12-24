% One iteration of the dual simplex method for solving the following problem:

% max c'*x
% s.t.
% Ax = b,
%  x => 0.

function [optimal,indb]=dual_simplex_iteration(Abar,b,cbar,indb,indnb)
optimal=0;
very_small=1e-8;
B=Abar(:,indb);
invB=inv(B);
cB=cbar(indb);
BiAbar=invB*Abar;

reduced_cost=cB'*invB*Abar-cbar';
if any(reduced_cost<-very_small)
    error('Dual feasibility violated.')
end

rhs=invB*b;
if any(rhs<-very_small)
    % most negative
    [dummy, leave]=min(rhs);
    % for nonbasic variables
    neg_nb=[];

    for j=indnb
        if BiAbar(leave,j)<-very_small
            neg_nb=[neg_nb j];
        end
    end
    
    if isempty(neg_nb)
        error('Infeasible problem.')
    end
   
    [dummy, enter]=min(abs(reduced_cost(neg_nb)./BiAbar(leave,neg_nb)));
    
    enter=neg_nb(enter);
    leave=indb(leave);
    
    disp(['Leaving variable = ' int2str(leave)])
    disp(['Entering variable = ' int2str(enter)])
else
    disp(['Optimal solution reached.'])
    optimal=1;
end

if ~optimal
    indb=[indb enter];
    for i=1:length(indb)
        if indb(i)==leave
            indb=[indb(1:i-1) indb(i+1:end)];
            break;
        end
    end
    %        
    sorted=[];
    for i=1:length(indb)
        [s,ind]=min(indb);
        sorted(i)=s;
        indb(ind)=[];
    end
    indb=sorted';
    disp(['Basic variable indices = ' int2str(indb)])
end