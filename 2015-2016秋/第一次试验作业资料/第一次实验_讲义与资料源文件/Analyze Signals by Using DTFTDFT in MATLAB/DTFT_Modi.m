clear;
p=[0.008,-0.033,0.05,-0.033,0.008];
d=[1,2.37,2.7,1.6,0.41];
k=1024;
wn=0:pi/k:pi;
[Xe,w]=freqz(p,d,wn);
Xe_Re=real(Xe);
Xe_Im=imag(Xe);
Xe_Mag=abs(Xe);
Xe_Arg=angle(Xe);
subplot(2,2,1)
plot(w/pi,Xe_Re);
title('Real Part');
set(gca,'XLim',[0,1]);
xlabel('\omega/\pi');ylabel('Amplitude');
subplot(2,2,2)
plot(w/pi,Xe_Im);
title('Image Part');
set(gca,'XLim',[0,1]);
xlabel('\omega/\pi');ylabel('Amplitude');
subplot(2,2,3)
plot(w/pi,Xe_Mag);
title('Magnitude Spectrum');
set(gca,'XLim',[0,1]);
xlabel('\omega/\pi');ylabel('Magnitude');
subplot(2,2,4)
plot(w/pi,Xe_Arg);
title('Phase Spectrum');
set(gca,'XLim',[0,1]);
xlabel('\omega/\pi');ylabel('Phase (rad)');
