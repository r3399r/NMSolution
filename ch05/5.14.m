P = 35000; A = 8500;
f =@(i) P*i*(1+i)^7/((1+i)^7-1) - A;
xl = 0.01; xu = 0.3;
xr = xl; ea = 100;
while (1)
    xrold = xr;
    xr = (xl + xu)/2;
    if xr ~= 0
        ea = abs((xr - xrold)/xr);
    end
    test = f(xl)*f(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea <= 0.00005, break, end
end
fprintf('interest rate i = %f\n',xr)
