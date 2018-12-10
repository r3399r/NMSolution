r1 = 0.5; r2 = 1; h = 1; rho_f = 200; rho_w = 1000;
V = @(x) pi*x/3*((r2-(r2-r1)/h*x)^2+r2^2+(r2-(r2-r1)/h*x)*r2);
m = V(h)*rho_f;
xl = 0; xu = 1; xr = xl; ea = 100;
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
