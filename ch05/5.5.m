%% Graphically
f =@(x) -12-21*x+18*x.^2-2.75*x.^3;
i = linspace(-2,6);
plot(i,f(i),[-2 6],[0 0],'k'), grid on

%% Bisection
xl = -1; xu = 0; xr_bisect = xl; ea = 100;
while (1)
    xrold = xr_bisect;
    xr_bisect = (xl + xu)/2;
    if xr_bisect ~= 0
        ea = abs((xr_bisect - xrold)/xr_bisect) * 100;
    end
    test = f(xl)*f(xr_bisect);
    if test < 0
        xu = xr_bisect;
    elseif test > 0
        xl = xr_bisect;
    else
        ea = 0;
    end
    if ea <= 1, break, end
end
fprintf('the root is %f (bisection)\n',xr_bisect)

%% False position
xl = -1; xu = 0; xr_false = xl; ea = 100;
while (1)
    xrold = xr_false;
    xr_false = xu - (f(xu)*(xl-xu)) / (f(xl)-f(xu));
    if xr_false ~= 0
        ea = abs((xr_false - xrold)/xr_false) * 100;
    end
    test = f(xl)*f(xr_false);
    if test < 0
        xu = xr_false;
    elseif test > 0
        xl = xr_false;
    else
        ea = 0;
    end
    if ea <= 2, break, end
end
fprintf('the root is %f (false position)\n',xr_false)