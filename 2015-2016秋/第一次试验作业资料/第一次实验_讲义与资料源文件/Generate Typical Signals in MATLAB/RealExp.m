clear;        % Clear workspace
clc;          % Clear message queue
a=0.9;        % Set up the base number
n=0:1:47;     % Set up time index
y=a.^n;       % Generate real exponetial signal based on the time index
figure(1)     % Plot graph: set up graph number
stem(n,y);    % Plot graph
set(gca,'XLim',[0,47]);  % Plot graph: set up proper axis
