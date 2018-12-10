function f = ch5_18(Re)
if Re < 2500 | Re > 1e6
    error('Re should between 2500 and 1000000.')
end
ff =@(f) 4*log10(Re*sqrt(f))-0.4-1/sqrt(f);
xl = 0.001; xu = 0.01; xr = xl; ea = 100;
while(1)
    xrold = xr;
    xr = (xl + xu)/2;
    if xr ~= 0
        ea = abs((xr-xrold)/xr);
    end
    test = ff(xl)*ff(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea < 5e-6, break, end
end
fprintf('Fanning friction number = %f\n',xr)
