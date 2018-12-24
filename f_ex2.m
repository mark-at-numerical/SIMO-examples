% Financial problem:
% Example 2:

% Peter opens a bank account with initial deposit of p0 dollars.
% His goal is to have pn dollars in the account after T years.
% Assume that interest is compounded monthly,
% and that he will deposit A dollars and withdraw W dollars every month.
% What is the required monthly savings interest rate to achieve his goal?

disp('Financial problem, Example 2:')

p0 = 10000;
pn = 800000;
m = 12;
T = 10;
A = 10000;
W = 6000;
% lower bound of interet rate
iLB = -160/100;
% upper bound of interest rate
iUB = 0.1;

rate = interest_rate(p0, pn, m, T, A, W, iLB, iUB);

disp(['The required interest rate = ' num2str(rate*100) '%'])