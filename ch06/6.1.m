f = @(x) sin(sqrt(x));
x = 0.5;
while(1)
    xold = x;
    x = f(x);
    if x ~= 0
        ea = abs((x-xold)/x) * 100;
    end
    if ea < 0.01, break, end
end
x
