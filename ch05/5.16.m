T0 = 300; T = 1000; miu0 = 1360;
q = 1.7e-19; ni = 6.21e9; rho = 6.5e6;
 
miu = miu0*(T/T0)^-2.42;
n   = 1/rho/q/miu;
f   =@(N) 1/2*(N+sqrt(N^2+4*ni^2)) - n;

%% Bisection
xl = 0; xu = 2.5e10; xr = xl; ea = 100;
while(1)
    xrold = xr;
    xr = (xl + xu)/2;
    if xr ~= 0
        ea = abs((xr - xrold)/xr) * 100;
    end
    test = f(xl)*f(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea <= 0.01, break, end
end
fprintf('N = %e (bisection)\n',xr)

%% False position
xl = 0; xu = 2.5e10; xr = xl; ea = 100;
while(1)
    xrold = xr;
    xr = xu - f(xu)*(xl-xu) / (f(xl)-f(xu));
    if xr ~= 0
        ea = abs((xr - xrold)/xr) * 100;
    end
    test = f(xl)*f(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea <= 0.01, break, end
end
fprintf('N = %e (false position)\n',xr)
