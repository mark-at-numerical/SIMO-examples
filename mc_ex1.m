% Estimating area under y=x^2 on interval [a,b]=[1,2].
% This is performed by Monte Carlo simulation.

disp('Monte Carol simulation, Example 1:')

a=1;
b=2;
n=100000;

M=max(abs(a^2),abs(b^2));
r1=rand(1,n);
r2=rand(1,n);
x=a+r1*(b-a);
y=r2*M;
c=sum(y<=x.^2);
A=M*(b-a)*c/n;
disp(['Estimated area = ' num2str(A)])
rerr=abs(A-7/3)/(7/3)*100;
disp(['Relative error = ' num2str(rerr) '%'])