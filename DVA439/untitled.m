%DVA439 Project - Temperature Regulation of Building with Reinforcement
%Learning (TeReBuil RL)

%Setting explore to 0 makes the agent greedy, making it select the action
%with highest reward only.
explore = 1;

episodes = 1;

epsilon = 0.1;

discount_rate = 0.9;


%Import outside temperature data from CSV file
tOut = (readmatrix('smhi-opendata_1_97200_20240125_095312.csv'));
tOut= tOut(:,3);

%TODO: Check correlation between temperature and wind, humudity etc.


%Actions - All defined actions which the reinforcement learning agent can
%take
heatIncrease = 1;
%heatMaintain = 0;
heatDecrease = -1;

minMaxTOut = [min(tOut) max(tOut)];


tIn = 20;
%tempDiff defines upper and lower indoor temperature limit
tempDiff = 2;

%Discretize state-space
x1 = minMaxTOut(1,1):.2:minMaxTOut(1,2);
x2 = (tIn-tempDiff):0.2:(tIn+tempDiff);

%Initialize Q-table
if exist('Q' , 'var') == 0
    disp("No Q-table found! Initialized Q-table.");
    %First column in Q-table is the reward for heatIncrease action, second is
    %reward for heatMaintain and last is for heatDecrease.
    Q = zeros((length(x1)*length(x2)), 2);
end

%%
for i = 1:episodes

    %Initialize first state 
    s = [tOut(1,1) tIn];
    currentState = s;
    index = 0;

    %Run for as long as the temperature is within the given interval (tIn
    %+- tempDiff)
    while (currentState(2) >= (tIn-tempDiff) && (currentState(2) <= (tIn+tempDiff)))
   
        %Choose action a
        if (explore * epsilon) > rand()
            action = randi(1, 2);
        end
    end

end



