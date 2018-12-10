% Newton-Raphson methond
f = @(x) 0.0074*x^4-0.284*x^3+3.355*x^2-12.183*x+5;
df = @(x) 0.0296*x^3-0.852*x^2+6.71*x-12.183;
x = 16.15;
while(1)
    xold = x;
    x = x-f(x)/df(x);
    if x ~= 0
        ea = abs((x-xold)/x) * 100;
    end
    if ea < 0.01, break, end
end
x
