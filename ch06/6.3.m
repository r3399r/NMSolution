% (a) Graphically
f = @(x) x^3-6*x^2+11*x-6.1;
fplot(f,[0,4])
grid on

% (b) Newton-Raphson methond
f = @(x) x^3-6*x^2+11*x-6.1;
df = @(x) 3*x^2-12*x+11;
x = 3.5;
for i = 1:3
    x = x-f(x)/df(x);
end
x

% (c) secant methond
f = @(x) x^3-6*x^2+11*x-6.1;
x1 = 2.5; x2 = 3.5;
for i = 1:3
    x = x1-f(x1)*(x2-x1)/(f(x2)-f(x1));
    x2 = x1;
    x1 = x;
end
x

% (d) modified-secant methond
f = @(x) x^3-6*x^2+11*x-6.1;
x = 3.5; d = 0.01;
for i = 1:3
    x = x-d*x*f(x)/(f(x+d*x)-f(x));
end
x

% (e) matlab function
roots([1,-6,11,-6.1])