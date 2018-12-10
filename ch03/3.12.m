tstart = 0; tend = 20; ni = 8;
t = linspace(tstart,tend,ni+1);
y = 10 + 5*cos(2*pi*t/(tend-tstart));
y(1) = 12 + 6*cos(2*pi*tstart/(tend-tstart));
