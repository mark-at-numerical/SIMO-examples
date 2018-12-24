% Estimating the area of a circle

disp('2D plot, Example 5:')

N=10000;
px=2*rand(1,N)-1;
py=2*rand(1,N)-1;
ind=find((px.^2+py.^2)<=1);
scatter(px(ind),py(ind),1,[1 0 0]);
hold('on')
out=find((px.^2+py.^2)>1);
scatter(px(out),py(out),1,[0 0 1]);
hold('off')
title('Est. area=Num of red dots / Num of red & blue dots');
A1=length(ind)/N;
A0=pi*.5^2;
disp(['Actual area: ' num2str(A0)])
disp(['Estimated area: ' num2str(A1)])
disp(['Relative area: ' num2str(abs(A1-A0)/A0*100) '%'])
