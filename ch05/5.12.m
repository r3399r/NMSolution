K = 0.016; c_a0 = 42; c_b0 = 28; c_c0 = 4;
xl = 0; xu = 20;
f =@(x) (c_c0+x)./(c_a0-2*x).^2./(c_b0-x) - K;
x = linspace(xl,xu);
plot(x,f(x)+K,x,K*ones(1,100))
legend('c_c/c_a^2c_b','K'), grid on

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
    if ea <= 0.5, break, end
end
fprintf('x = %f\n',xr)
