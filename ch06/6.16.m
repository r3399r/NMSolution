% Newton-Raphson methond
r = 2; L = 5; V = 8;
f = @(h) (r^2*acos((r-h)/r)-(r-h)*sqrt(2*r*h-h^2))*L-V;
df = @(h) L*((-h^2+2*r*h)^(1/2)+r/(1-(h-r)^2/r^2)^(1/2)-((h-r)*(2*h-2*r))/(2*(2*h*r-h^2)^(1/2)));
x = 1;
while(1)
    xold = x;
    x = x-f(x)/df(x);
    if x ~= 0
        ea = abs((x-xold)/x) * 100;
    end
    if ea < 0.01, break, end
end
x
