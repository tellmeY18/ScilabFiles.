clf(1);

clf(2); 

clf(3);

clf(4);

scf(1);

Fn = 22200;

dt = 1/Fn;

stopTime=0.1;

TIME_DOMAIN=(0:dt:stopTime);

ORIGINAL_WAVE = 2*cos(20*%pi*TIME_DOMAIN)+5*cos(100*%pi*TIME_DOMAIN);

plot2d(TIME_DOMAIN, ORIGINAL_WAVE);

xgrid(12); 

xlabel("$t$","fontsize", 4);

ylabel("$x(t)$", "fontsize", 4);

title("$x(t)=2cos(20\pi t) + 5cos(100 \pi t)$","fontsize", 4);

scf(2);

SAMPLING_FREQ = 200;

NO_OF_SAMPLES=stop_Time*SAMPLING_FREQ;

DISCRETE_DOMAIN=(0:1:NO_OF_SAMPLES);

SAMPLED_WAVE = 2*cos((20*%pi*DISCRETE_DOMAIN)/SAMPLING_FREQ) + 5*cos((100*%pi DISCRETE_DO

MAIN)/SAMPLING_FREQ);

plot2d3 (DISCRETE_DOMAIN, SAMPLED_WAVE);

xgrid(12);

xlabel("$n$", "fontsize", 4);

ylabel("$x[n]$", "fontsize", 4); 

title("$x(t)=2cos(20 \pi t) + 5cos(100 \pi t)$", "fontsize", 4);

scf(3);

[FFT] = abs(fft (SAMPLED WAVE));

plot2d3(DISCRETE_DOMAIN, FFT);

xgrid(12);

xlabel("$k$", "fontsize", 4);

label("$X[k]$", "fontsize", 4);

title("$x(t) = 2cos(20 \pi t) + 5cos(100 \pi t)$", "fontsize", 4);

sci(4);

FREQUENCY_DOMAIN=(SAMPLING_FREQ/NO_OF_SAMPLES)*DISCRETE_DOMAIN;

plot2d3(FREQUENCY_DOMAIN,FFT);

xgrid(12):

xlabel("$f(Hz)$", "fontsize", 4);

ylabel("$|X[k]|$","fontsize", 4);

title("$x(t)=2cos(20 \pi t)+ 5cos(100 \pi t$","fontsize",4);



