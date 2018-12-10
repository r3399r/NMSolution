f = @(x) x^3-6*x^2+11*x-6.1;
x = 3.5; d = 0.01;
while(1)
    xold = x;
    x = x-d*x*f(x)/(f(x+d*x)-f(x));
    if x ~= 0
        ea = abs((x-xold)/x) * 100;
    end
    if ea < 0.01, break, end
end
x
