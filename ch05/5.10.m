xl = 0.5; xu = 2.5;
i = linspace(xl,xu);
Q = 20; g = 9.81;
f =@(y) 1 - Q^2/g./(3*y+y.^2/2).^3.*(3+y);
plot(i,f(i),[xl xu],[0 0],'k'), grid on

%% Bisection
xr_bisect = xl; iter = 0;
while(1)
    iter = iter + 1;
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
    if ea <= 1 | iter >= 10, break, end
end
fprintf('the critical depth is %f (Bisection)\n',xr_bisect)

%% False position
xl = 0.5; xu = 2.5; xr_false = xl; iter = 0;
while(1)
    iter = iter + 1;
    xrold = xr_false;
    xr_false = xu - (f(xu)*(xl-xu)) / (f(xl)-f(xu));
    test = f(xl)*f(xr_false);
    if xr_bisect ~= 0
        ea = abs((xr_bisect - xrold)/xr_bisect) * 100;
    end
    if test < 0
        xu = xr_false;
    elseif test > 0
        xl = xr_false;
    else
        ea = 0;
    end
    if ea <= 1 | iter >= 10, break, end
end
fprintf('the critical depth is %f (False position)\n',xr_false)
