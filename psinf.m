% Rectified sine function.

function y = psinef(x)

s=rem(x,2*pi);

y=[];
for ss=s
    if ss>0 & ss<=pi
        y=[y sin(ss)];
    elseif ss>pi & ss<=2*pi
        y=[y 0];
    else
        y=[y 0];
    end
end