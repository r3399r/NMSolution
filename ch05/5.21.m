Alk = 0.4*1e-3;
K1 = 10^-6.3; K2 = 10^-10.3; Kw = 10^-14; KH = 10^-1.46;
f = @(H) K1*KH*Alk/10^6/H+2*K2*K1*KH*Alk/10^6/H^2+Kw/H-H-Alk;

xl = 10^-2; xu = 10^-12; xr = xl; ea = 100;
while(1)
    xrold = xr;
    xr = (xl + xu)/2;
    if xr ~= 0
        ea = abs((xr-xrold)/xr) * 100;
    end
    test = f(xl)*f(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea < 1e-8, break, end
end
pH = -log10(xr)
