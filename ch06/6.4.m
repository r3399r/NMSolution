% (a) Graphically
f = @(x) 7*sin(x)*exp(-x)-1;
fplot(f,[0,3])
grid on

% (b) Newton-Raphson methond
f = @(x) 7*sin(x)*exp(-x)-1;
df = @(x) 7*exp(-x)*cos(x)-7*exp(-x)*sin(x);
x = 0.3;
for i = 1:3
    x = x-f(x)/df(x);
end
x

% (c) secant methond
f = @(x) 7*sin(x)*exp(-x)-1;
x1 = 0.4; x2 = 0.5;
for i = 1:3
    x = x1-f(x1)*(x2-x1)/(f(x2)-f(x1));
    x2 = x1;
    x1 = x;
end
x

% (d) modified-secant methond
f = @(x) 7*sin(x)*exp(-x)-1;
x = 0.3; d = 0.01;
for i = 1:3
    x = x-d*x*f(x)/(f(x+d*x)-f(x));
end
x
