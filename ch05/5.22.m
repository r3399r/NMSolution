r = 1; rho_s = 200; rho_w = 1000;
V = @(h) pi*h^2/3*(3*r-h);
m = 4/3*pi*r^3*rho_s;
xl = 0; xu = 2; xr = xl; ea = 100;
while(1)
    xrold = xr;
    xr = ( xl + xu )/2;
    if xr ~= 0
        ea = abs((xr-xrold)/xr) * 100;
    end
    test = (V(xl)*rho_w-m)*(V(xr)*rho_w-m);
    if test < 0
        xl = xr;
    elseif test > 0
        xu = xr;
    else
        ea = 0;
    end
    if ea < 1e-4, break, end
end
fprintf('h = %f\n',xr);
