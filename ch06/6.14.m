% Newton-Raphson methond
pt = 3; K = 0.05;
f = @(x) x/(1-x)*sqrt(2*pt/(2+x))-K;
df = @(x) (2^(1/2)*x*(pt/(x + 2))^(1/2))/(x-1)^2- ...
    (2^(1/2)*(pt/(x+2))^(1/2))/(x-1)+(2^(1/2)*pt*x)/ ...
    (2*(pt/(x + 2))^(1/2)*(x-1)*(x+2)^2);
x = 0.03;
while(1)
    xold = x;
    x = x-f(x)/df(x);
    if x ~= 0
        ea = abs((x-xold)/x) * 100;
    end
    if ea < 0.01, break, end
end
x
