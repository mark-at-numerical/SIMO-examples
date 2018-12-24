% Financial problem:
% Example 1:
% Finding bank account balance.

disp('Financial problem, Example 1:')

% Initial principal
p0 = 30008;
% Annual interest rate
i = 0.03;
% Number of compounding period per year
m = 12;
% Total number of periods
n = m * 10;
% Monthly deposit
A = 10000;
% Monthly withdrawal
W = 6000;

% Final account balance
disp(['The account balance after 10 years = $' num2str(balance(p0, i, m, n, A, W), 6)])
