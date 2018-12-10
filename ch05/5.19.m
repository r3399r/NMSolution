cp =@(T) 0.99403 + 1.671e-4*T + 9.7215e-8*T.^2 - 9.5838e-11*T.^3 + 1.952e-14*T.^4;
T = linspace(0,1200);
plot(T,cp(T),[0 1200],[1.1 1.1]), grid on
legend('c_p(T)','c_p=1.1')
xl = 0; xu = 1200; xr = xl; ea = 100;
while(1)
    xrold = xr;
    xr = (xl + xu)/2;
    if xr ~= 0
        ea = abs((xr-xrold)/xr) * 100;
    end
    test = (cp(xl)-1.1)*(cp(xr)-1.1);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea < 0.001, break, end
end
fprintf('the temperature is %f K\n',xr)
