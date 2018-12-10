xl = 0.5; xu = 2;
i = linspace(xl,xu);
plot(i,log(i.^2),i,0.7*ones(size(i)),[xl xu],[0 0],'k')
grid on, legend('y=ln(x^2)','y=0.7')
f =@(x) log(x.^2)-0.7;

%% Bisection
xr_bisect = xl;
for n = 1:3
    xr_bisect = (xl + xu)/2;
    test = f(xl)*f(xr_bisect);
    if test < 0
        xu = xr_bisect;
    else
        xl = xr_bisect;
    end
end
fprintf('the root is %f (bisection)\n',xr_bisect)

%% False position
xl = 0.5; xu = 2; xr_false = xl;
for n = 1:3
    xr_false = xu - (f(xu)*(xl-xu)) / (f(xl)-f(xu));
    test = f(xl)*f(xr_false);
    if test < 0
        xu = xr_false;
    else
        xl = xr_false;
    end
end
fprintf('the root is %f (false position)\n',xr_false)
