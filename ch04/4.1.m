function [fx,ea,iter] = ch4_01(a,es,maxit)
% x = value at which series evaluated
% es = stopping criterion (default = 0.0001)
% maxit = maximum iterations (default = 50)
% fx = estimated value
% ea = approximate relative error (%)
% iter = number of iterations
if nargin<2|isempty(es), es=0.0001; end
if nargin<3|isempty(maxit), maxit=50; end
if a<=0, error('a should be positive'), end
iter = 1; ea = 100; x = 1;
while (1)
    xold = x;
    x = (x+a/x)/2;
    iter = iter + 1;
    if x~=0
        ea=abs((x-xold)/x)*100;
    end
    if ea<=es | iter>=maxit, break, end
end
fx = x;
