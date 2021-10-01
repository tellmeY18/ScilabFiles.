end_time=0.1
time=(0:0.00005:end_time);
signal_1=2*cos(20*3.14*time)+5*cos(100*3.14*time);

scf(1)
plot2d(time,signal_1);
xgrid(12);
xlabel("$t$","fontsize",5);
ylabel("$x(t)$","fontsize",5);
title("$x(t)=2cos(20\pi t) + 5 cos(100\pi t)$","fontsize",5);

scf(2);
sampling_frequency=200;
samples=end_time*sampling_frequency;
n=(0:1:samples);
signal_2=2*cos(20*3.14*n / sampling_frequency)+5*cos(100*3.14*n / sampling_frequency);

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
f=(sampling_frequency/samples)*n;
plot2d3(f,FFT);
xgrid(12);
xlabel("$f(HZ)$","fontsize",5);
ylabel("$x[k]$","fontsize",5);
title("$x(t)=2cos(20\pi t) + 5 cos(100\pi t)$","fontsize",5);



