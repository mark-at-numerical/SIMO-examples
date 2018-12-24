% Periodic unit step function.
% x can be scalar or vector.

function y = pstep(x)

s=rem(x,2*pi);

y=[];
for ss=s
    if ss>0 & ss<=pi
        y=[y 1];
    elseif ss>1 & ss<=2*pi
        y=[y 0];
    else
        y=[y 0];
    end
end