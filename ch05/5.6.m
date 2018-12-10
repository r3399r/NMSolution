xl = 0.5; xu = 1;
f =@(x) x.^2-sin(x);
i = linspace(xl,xu);
plot(i,sin(i),i,i.^2,[xl xu],[0 0],'k'), grid on
grid on, legend('y=sin(x)','y=x^2')
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
    if ea <= 1, break, end
end
fprintf('the root is %f\n',xr)
