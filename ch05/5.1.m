xl = 0.1; xu = 0.2; g = 9.81;
m = 80; v = 36; t = 4;
f =@(cd) sqrt(g*m/cd)*tanh(sqrt(g*cd/m)*t)-v;
xr = xl; ea = 100;
while (1)
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
    if ea <= 2, break, end
end
fprintf('the drag coefficient is %f\n',xr)