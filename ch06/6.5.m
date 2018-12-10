% (a) Newton-Raphson methond
f = @(x) x^5-16.05*x^4+88.75*x^3-192.0375*x^2+116.35*x+31.6875;
df = @(x) 5*x^4-321*x^3/5+1065*x^2/4-15363*x/40+2327/20;
x = 0.5825;
while(1)
    xold = x;
    x = x-f(x)/df(x);
    if x ~= 0
        ea = abs((x-xold)/x) * 100;
    end
    if ea < 0.01, break, end
end
x

% (d) modified-secant methond
f = @(x) x^5-16.05*x^4+88.75*x^3-192.0375*x^2+116.35*x+31.6875;
x = 0.5825; d = 0.05;
while(1)
    xold = x;
    x = x-d*x*f(x)/(f(x+d*x)-f(x));
    if x ~= 0
        ea = abs((x-xold)/x) * 100;
    end
    if ea < 0.01, break, end
end
x