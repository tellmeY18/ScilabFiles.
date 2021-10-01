clf(1);
clf(2);
clf(3);
clf(4);

scf(1);

FILE="C:\Users\S5\Desktop\infoaudio.wav"
info=wavread(FILE, "info");

[SOUND_WAVE,Fs,bits] = wavread(FILE);
total_time=(info(8)/info(3));
samples=soundsec(total_time, info(3));

plot2d(samples,SOUND_WAVE);
xgrid(12);
xlabel("$t$","fontsize",4);
ylabel("$x(t)$", "fontsize", 4);
title ("$x(t)=Speech\hspace{5} Sample$", "fontsize",4);

SAMPLED_WAVE=SOUND_WAVE(1:6:info(8))

scf(2);
N=24000;
SAMPLED_WAVE=SAMPLED_WAVE(1:1:N);
DISCRETE_DOMAIN=(1:1:24000);
plot2d3(DISCRETE_DOMAIN,SAMPLED_WAVE);
xgrid(12);
xlabel("$n$","fontsize",4);
ylabel("$x[n]$", "fontsize", 4);
title ("$x(t)=Speech\hspace{5} Sample$", "fontsize",4);

scf(3);
[FFT] =abs(fft(SAMPLED_WAVE));
plot2d3(DISCRETE_DOMAIN, FFT);
xgrid(12);
xlabel("$k$","fontsize",4);
ylabel("$|X[k]|$", "fontsize", 4);
title ("$x(t)=Speech\hspace{5} Sample$", "fontsize",4);

scf(4);
FREQUENCY_DOMAIN=(8000/N)*DISCRETE_DOMAIN;
plot2d3(FREQUENCY_DOMAIN,FFT);
xgrid(12);
xlabel("$f(Hz)$","fontsize",4);
ylabel("$|X[k]|$", "fontsize", 4);
title ("$x(t)=Speech\hspace{5} Sample$", "fontsize",4);


