clear;
FileName='BYLZ.wav';
Speed=0.5;
tic;
[AudioSequence,SampleFrequency]=audioread(FileName);
toc;
% sound(AudioSequence,SampleFrequency*Speed);
figure(1)
plot(1:1:length(AudioSequence),AudioSequence);
title('Audio Sequence of BYLZ.wav @ Fs=8000Hz');
set(gca,'XLim',[1,length(AudioSequence)],'YLim',[-1,1])
