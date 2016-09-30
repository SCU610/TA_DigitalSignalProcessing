clear;          % Clear workspace
clc;            % Clear message queue
w=2*pi/48;      % Set up digital angular frequency
n=0:1:47;       % Set up time index
y=exp(-1i*w*n); % Generate complex exponetial signal based on the time index
y_re=real(y);   % Calculate the real part of y
y_im=imag(y);   % Calculate the image part of y
y_mag=abs(y);   % Calculate the magnitude of y
y_arg=angle(y); % Calculate the argument of y

figure(1)       % Plot graph: set up graph number
subplot(2,2,1)
stem(n,y_re);
title('Real Part')
set(gca,'XLim',[0,47],'YLim',[-1.5,1.5]);
subplot(2,2,2)
stem(n,y_im);
title('Image Part')
set(gca,'XLim',[0,47],'YLim',[-1.5,1.5]);
subplot(2,2,3)
stem(n,y_mag);
title('Magnitude')
set(gca,'XLim',[0,47],'YLim',[-1.5,1.5]);
subplot(2,2,4)
stem(n,y_arg);
title('Argument')
set(gca,'XLim',[0,47],'YLim',[-pi,pi]);
