function T = ch5_08(o_sf)
f =@(Ta) exp(-139.34411 + 1.575701e5/Ta - 6.642308e7/Ta^2 ...
    + 1.243800e10/Ta^3 - 8.621949e11/Ta^4) - o_sf;
xu = 35+273.15; xl = 0+273.15;
n = log2((xu-xl)/0.05);
iter = 0; xr = xl;
while (1)
    xr = (xl + xu)/2;
    iter = iter + 1;
    test = f(xl)*f(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        iter = n;
    end
    if iter >= n, break, end
end
T = xr-273.15;
    