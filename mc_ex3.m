% Estimating pi by Monte Carol simulation.

disp('Monte Carol simulation, Example 3:')

% Randomly generate n points (x,y) uniformly distributed
% inside a unit square.

n=100000;
x=rand(1,n)-0.5;
y=rand(1,n)-0.5;

% Count the number of points lying inside
% a circle of diameter 1.
count=sum(sqrt(x.^2+y.^2)<0.5);

% Estimating the area of the above circle.
A=count/n;

% Estimating pi.
disp(['Estimated value of pi using 100 thousands random points = ' num2str(A/0.5^2)])
