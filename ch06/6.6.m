f = @(x) x^3-6*x^2+11*x-6.1;
x1 = 2.5; x2 = 3.5;
while(1)
    xold = x;
    x = x1-f(x1)*(x2-x1)/(f(x2)-f(x1));
    x2 = x1;
    x1 = x;
    if x ~= 0
        ea = abs((x-xold)/x) * 100;
    end
    if ea < 0.01, break, end
end
x
