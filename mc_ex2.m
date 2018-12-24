% Simulating the CDF of the standard normal distribution using the built-in random number generator.
% Plotting on the same graph the simulated CDF and the CDF given by normcdf.
% 1,000 random numbers are used.

disp('Monte Carol simulation, Example 2:')

clear
mu=0;
sd=1;
num=1000;
n=20;% in total 2*n-1 bins
xbound=4;
count=0;
r=randn([1 num]);
x=linspace(0,xbound,n);
x=[fliplr(-x(2:end)) x];
delta=x(2)-x(1);
for i=1:length(x)-1
    left=x(i);
    right=x(i+1);
    c=(r<=right)&(r>left);
    count(i)=sum(c);
end

count=[0;count];
p=count/num;

for i=1:length(p)
    cumcount(i)=sum(p(1:i));
end

plot(x,cumcount)
hold('on')
plot(x,normcdf(x,mu,sd))
xlabel('x')
ylabel('CDF / Simulated CDF')
hold('off')
legend('Simulated','By normcdf')