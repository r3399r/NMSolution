L = 600; E = 50000; I = 30000; w0 = 2.5;
y =@(x) w0/120/E/I/L*(-x.^5+2*L^2*x.^3-L^4*x);
dy =@(x) w0/120/E/I/L*(-5*x.^4+6*L^2*x.^2-L^4);
xl = 0; xu = L;
xr = xl; ea = 100;
while (1)
    xrold = xr;
    xr = (xl + xu)/2;
    if xr ~= 0
        ea = abs((xr - xrold)/xr) * 100;
    end
    test = dy(xl)*dy(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea <= 0.01, break, end
end
fprintf('the point of maximum deflection: %f\n',xr)
fprintf('the value of maximum deflection: %f\n',y(xr))
