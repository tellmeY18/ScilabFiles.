cif(4);

Fn 22200;

dt=1/Fn;

stopTime 0.125;

TIME DOMAIN (0dt stopTime);

ORIGINAL WAVE-2cos(2pi TIME DOMAIN) Scos(100%pi TIME DOMAIN);

plot2d(TIME DOMAIN, ORIGINAL_WAVE): xgrid(12);

ylabel(x()$", "fontsize", 4); title('Sx(1)-2cos (20 pit)+5cos(100 pin)S", "fontsize", 1);

SAMPLING FREQ-200;

NO OF SAMPLES-stopTime SAMPLING FREQ; DISCRETE DOMAIN (01 NO_OF_SAMPLES):

SAMPLED WAVE cos((2pi DISCRETE DOMAIN) SAMPLING FREQ) + 5*cos[[100 %* DISCRETE DOMAIN) SAMPLING_FREQ);

plut243 (DISCRETE DOMAIN, SAMPLED WAVE):

grid(12);

ylabell Ssto]S","fontsize", 1); title]"St-2cos[20 pit) Scos(100 pits", "fontsize", 4);

[FFT] abs (SAMPLED WAVE)); plot2d3(DISCRETE_DOMAIN, FFT);

grid[12);

xlabel("SKS", "Tuntuize", 1);

labell $X$", "foutsize", 4); titlelSt2cos[20 pit) Seos[100 pit)S","fontice", 4);

FREQUENCY_DOMAIN - (SAMPLING FREQ/NO_OF_SAMPLES] DISCRETE_DOMAIN plot2d3 (FREQUENCY DOMAIN, FFT);

xgrid(12)

xlabel($t(H)$","fontsize", 1);

vlabell'sk], "fontsize", 4); title(Sxt] 2cos(20 pit) cos(100 p115", "fontsize",+);






