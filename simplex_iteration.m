% One iteration of the simplex method for solving the following linear programming problem:

% max c'*x
% s.t.
% Ax = b,
%  x => 0.

% indb: indices of basic variables

function [optimal,indb]=simplex_iteration(A,b,c,indb)

smallnum=1e-8;
optimal=0;

cB=c(indb);
B=A(:,indb);
invB=inv(B);

% entering variable
% looking for most negative delta
delta=cB'*invB*A-c';
[mindelta,e]=min(delta);

% all negative or zero
if mindelta >= -smallnum
    disp('Optimal solution found.')
    optimal=1;
end

if ~optimal
% leaving variable
    Bb=invB*b;
    theta=invB*A;
    
    i_tilde=0;
    min_ratio=1e6;
    for i=1:size(theta,1)
        theta_i=theta(i,e);
        Bb_i=Bb(i);
        if theta_i>smallnum
            if (Bb_i/theta_i)<min_ratio
                min_ratio=(Bb_i/theta_i);
                i_tilde=i;
            end
        end
    end

    if ~i_tilde
        error('unbounded solution')
    else
        leave = indb(i_tilde);
    end

    indb=[indb e];
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
end