% Newton-Raphson methond
f = @(x) tanh(x^2-9);
df = @(x) -2*x*(tanh(x^2-9)^2-1);
x = 3.2;
for i = 1:3
    x = x-f(x)/df(x)
end