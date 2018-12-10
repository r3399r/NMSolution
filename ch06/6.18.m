% Newton-Raphson methond
I = 3.5;
f = @(t) 9*exp(-t).*sin(2*pi*t)-I;
df = @(t) 18*pi*exp(-t)*cos(2*pi*t)-9*exp(-t)*sin(2*pi*t);
x1 = 0.1; x2 = 0.4;
while(1)
    xold = x1;
    x1 = x1-f(x1)/df(x1);
    if x1 ~= 0
        ea = abs((x1-xold)/x1) * 100;
    end
    if ea < 0.01, break, end
end
while(1)
    xold = x2;
    x2 = x2-f(x2)/df(x2);
    if x1 ~= 0
        ea = abs((x2-xold)/x2) * 100;
    end
    if ea < 0.01, break, end
end
x1
x2