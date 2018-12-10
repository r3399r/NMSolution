S0 = 8; v = 0.7; k = 2.5;
xr = zeros(1,100);
t = linspace(0,40);
for i = 1:100
    f =@(S) S0 - v*t(i) + k*log(S0/S) - S;
    xl = 0; xu =50;
    xr(i) = xl; ea = 100;
    while (1)
        xrold = xr(i);
        xr(i) = (xl + xu)/2;
        if xr(i) ~= 0
            ea = abs((xr(i) - xrold)/xr(i)) * 100;
        end
        test = f(xl)*f(xr(i));
        if test < 0
            xu = xr(i);
        elseif test > 0
            xl = xr(i);
        else
            ea = 0;
        end
        if ea <= 0.001, break, end
    end
end
plot(t,xr), xlabel('time'), ylabel('S')
