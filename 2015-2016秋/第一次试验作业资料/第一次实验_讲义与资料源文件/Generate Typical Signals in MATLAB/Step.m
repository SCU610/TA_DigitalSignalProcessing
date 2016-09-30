clear;                % Clear workspace
clc;                  % Clear message queue
n=-10:1:10;           % Set up time index
y=zeros(length(n));   % Generate Sine signal based on the time index
y(find(n>=0))=1;      % Find where n not less than zero
figure(1)             % Plot graph: set up graph number
stem(n,y);            % Plot graph
set(gca,'XLim',[-10,10],'YLim',[-0.5,1.5]);  % Plot graph: set up proper axis
