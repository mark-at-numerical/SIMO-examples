% Plotting rectified sine and periodic unit step functions.

disp('2D plot, Example 1:')

clear
x=0:0.2:8*pi;
plot(x,psinf(x),'o-','MarkerSize',3);
hold('on')
plot(x,pstep(x),'--')
hold('off')
ylim([-.1 1.1])
legend('Rectified sine wave','Square wave')