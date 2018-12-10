e0 = 8.9e-12; F = 1.25; q = 2e-5; Q = q; a = 0.85;
f =@(x) 1/4/pi/e0*q*Q*x./(x.^2+a^2).^(3/2) - F;
xl = 0; xu = 1; xr = xl; ea = 100;
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
    if ea < 0.01, break, end
end
xr1 = xr;
xl = 1; xu = 2; xr = xl; ea = 100;
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
    if ea < 0.01, break, end
end
xr2 = xr;
fprintf('x = %f or %f\n',xr1,xr2)
