u = 1800; m0 = 160000; q = 2600; v = 750; g = 9.81;
f =@(t) u*log(m0/(m0-q*t))-g*t-v;
xl = 10; xu = 50; xr = xl; ea = 100;
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
    if ea < 1, break, end
end
fprintf('at t = %fs, v = 750m/s\n',xr)
