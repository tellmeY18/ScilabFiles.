clf(1);clf(2);clf(3);clf(4);
scf(1);  Fn=22000;dt=1/FnSAMPLING_FREQ=5;  N=64;stopTime=(N/SAMPLING_FREQ);  TIME_DOMAIN=(0:dt:stopTime);  ORIGINAL_WAVE=exp(-TIME_DOMAIN);  
plot2d (TIME_DOMAIN, ORIGINAL_WAVE);  xgrid(12);  xlabel("$t$","fontsize",4) ;  ylabel("$x(t)$","fontsize",4); title("$x(t)=e^{-t}$", "fontsize", 4);
scf(2);DISCRETE_DOMAIN=(0.1:N);SAMPLED_WAVE=exp(-(DISCRETE_DOMAIN/SAMPLING_FREQ)); N=64;DISCRETA_DOMAIN=(1:1:N);PADDED_WAVE=resize_matrix(SAMPLED_WAVE,-1,64);plot2d3(DISCRETE_DOMAIN, SAMPLED_WAVE);  xgrid(12);  xlabel("$n$", "fontsize", 0);  ylabel("$x[n]$","fontsize", 4);title("$x(t)=e^{-t}$","fontsize",4);
scf(3);  [FFT] = abs(fft(SAMPLED_WAVE)); plot2d3(DISCRETE_DOMAIN, FFT);xgrid(12); xlabel("$k$", "fontsize", 4); ylabel("$|X[k]|$", "fontsize", 4);title("$x(t)=e^{-t}$","fontsize",4);
scf(4);FREQUENCY_DOMAIN=(SAMPLING_FREQ/N)*DISCRETE_DOMAIN plot2d3(FREQUENCY_DOMAIN,FFT);xgrid(12);  xlabel("$f(Hz)$","fontsize",4);ylabel("$|X[k]|$", "fontsize",4);title("$x(t)=e^{-t}$","fontsize",4);



