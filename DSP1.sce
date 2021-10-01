endTime=0.1
time=(0:0.00005:endTime);
og_signal=2*cos(20*3.14*time)+5*cos(100*3.14*time);

scf(1)
plot2d(time,og_signal);
xgrid(12);
xlabel("$t$","fontsize",5);
ylabel("$x(t)$","fontsize",5);
title("$x(t)=2cos(20\pi t) + 5 cos(100\pi t)$","fontsize",5);

scf(2);
samplingFrequency=200;
samples=endTime*samplingFrequency;
n=(0:1:samples);
signal_2=2*cos(20*3.14*n / samplingFrequency)+5*cos(100*3.14*n / samplingFrequency);

plot2d3(n,signal_2);
xgrid(12);
xlabel("$n$","fontsize",5);
ylabel("$x[n]$","fontsize",5);
title("$x(t)=2cos(20\pi t) + 5 cos(100\pi t)$","fontsize",5);

scf(3);
[FFT]=abs(fft(signal_2));
plot2d3(n,FFT);
xgrid(12);
xlabel("$k$","fontsize",5);
ylabel("$x[k]$","fontsize",5);
title("$x(t)=2cos(20\pi t) + 5 cos(100\pi t)$","fontsize",5);

scf(4);
f=(samplingFrequency/samples)*n;
plot2d3(f,FFT);
xgrid(12);
xlabel("$f(HZ)$","fontsize",5);
ylabel("$x[k]$","fontsize",5);
title("$x(t)=2cos(20\pi t) + 5 cos(100\pi t)$","fontsize",5);



