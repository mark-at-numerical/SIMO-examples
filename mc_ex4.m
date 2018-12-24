% Simulation of an M/M/1 queue using random numbers
% from exponential distibutions (exprnd)

disp('Monte Carol simulation, Example 4:')

% Mean arrival rate
lam=.9;
% Mean service rate
mu=1.;

qlen=0;
now=0;
nextarrtime=exprnd(1/lam);
deptime=inf;
T=200;

time=[];
q=[];

while now <= T
    if nextarrtime<deptime 
        now=nextarrtime;
        % New arrival
        if deptime==inf 
            % Server idle
            deptime=now+exprnd(1/mu);
        else
            % Server busy
            qlen=qlen+1;
        end
    else
        now=deptime;
        
        % Departure
        if qlen>0 
            % Queue not empty.
            % Serve next customer.
            qlen=qlen-1;
            deptime=now+exprnd(1/mu);
        else
            % Queue empty.
            deptime=inf;
        end
    end

    time=[time now];
    q=[q qlen];
    nextarrtime=now+exprnd(1/lam);
end

disp(['Theoretical mean queue length = ' num2str(lam^2/(mu*(mu-lam)))])

plot(time,q,'o')
xlabel('Time')
ylabel('Queue length')