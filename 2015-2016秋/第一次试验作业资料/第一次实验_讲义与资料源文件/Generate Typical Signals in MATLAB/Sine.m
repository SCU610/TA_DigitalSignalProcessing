clear;        % Clear workspace
clc;          % Clear message queue
w=2*pi/48;    % Set up digital angular frequency
n=0:1:47;     % Set up time index
y=sin(w*n);   % Generate Sine signal based on the time index
figure(1)     % Plot graph: set up graph number
stem(n,y);    % Plot graph
set(gca,'XLim',[0,47]);  % Plot graph: set up proper axis
