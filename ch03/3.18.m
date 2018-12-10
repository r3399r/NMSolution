function [M, m] = ch3_18(f, l, r)
% f = function
% l = left side
% r = right side
% M = Maximum
% m = minimum
x = linspace(l,r);
a = f(x);
M = max(a);
m = min(a);
plot(x,a)
