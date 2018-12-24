% Ball

disp('Surface plot, Example 4:')

[s,t]=meshgrid(0:.02*pi:2*pi,0:.02*pi:pi);
surf(2*cos(s).*sin(t),2*sin(s).*sin(t),cos(t))
title('Ball')