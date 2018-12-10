function xr = ch3_15(x, n)
% Problem 3.15
% round a number x to a specified number of decimal digits, n
a = abs(x*10^n);
b = rem(a*10,10);
if b<5
    xr = floor(a)/10^n;
elseif b>=5
    xr = ceil(a)/10^n;
end
if x<0, xr = -xr; end
