function ch3_13(a)
% Problem 3.13
% approximating the square root by "divide and average" method
x = 1;
if a == 0, x = 0;
else
    while(1)
        xold = x;
        x = (x+abs(a)/x)/2;
        err = abs((x-xold)/x);
        if err <= 1e-4, break, end
    end
    if a < 0, x = x*i, end
end    
x
