clear;
FileName='BYLZ.wav';    % Set up audio file name
Speed=1;                % Set up play speed
[AudioSequence,SampleFrequency]=audioread(FileName);  % Read audio file into workspace
AudioSequence_DFT=fft(AudioSequence); % DFT

figure(1) % Plot
plot(0:SampleFrequency/length(AudioSequence):SampleFrequency/2-SampleFrequency/length(AudioSequence),abs(AudioSequence(1:end/2)));
title('Magnitude Spectrum of BYLZ.wav');
set(gca,'XLim',[0,SampleFrequency/2-SampleFrequency/length(AudioSequence)],'YLim',[0,1])
