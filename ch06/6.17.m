% (a) Newton-Raphson methond
w = 10; y0 = 5; y = 15; x = 50;
f = @(T) T/w*cosh(w/T*x)+y0-T/w-y;
df = @(T) cosh((w*x)/T)/w-1/w-(x*sinh((w*x)/T))/T;
x1 = 1200;
while(1)
    xold = x1;
    x1 = x1-f(x1)/df(x1);
    if x1 ~= 0
        ea = abs((x1-xold)/x1) * 100;
    end
    if ea < 0.01, break, end
end
x1

% (b)
w = 10; y0 = 5; T = 1266.3;
f = @(x) T/w*cosh(w/T*x)+y0-T/w;

x = linspace(-50,100);
plot(x,f(x))