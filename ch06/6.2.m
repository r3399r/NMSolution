% (a) fixd-point iteration
f = @(x) -0.9*x.^2+1.7*x+2.5;
x = 5;
while(1)
    xold = x;
    x = f(x);
    if x ~= 0
        ea = abs((x-xold)/x) * 100;
    end
    if ea < 0.01, break, end
end
x

% (b) Newton-Raphson methond
f = @(x) -0.9*x.^2+1.7*x+2.5;
df = @(x) -1.8*x+1.7;
x = 5;
while(1)
    xold = x;
    x = x-f(x)/df(x);
    if x ~= 0
        ea = abs((x-xold)/x) * 100;
    end
    if ea < 0.01, break, end
end
x
