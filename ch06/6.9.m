% Newton-Raphson methond
f = @(x) -2+6*x-4*x^2+0.5*x^3;
df = @(x) 6-8*x+1.5*x^2;
x1 = 4.5; % (a)
x2 = 4.43; % (b)
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
    if x2 ~= 0
        ea = abs((x2-xold)/x2) * 100;
    end
    if ea < 0.01, break, end
end
x1
x2
