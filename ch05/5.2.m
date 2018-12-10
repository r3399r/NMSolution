function root=ch5_02(func,xl,xu,es,varargin)
% uses bisection method to find the root of func
% input:
% func = name of function
% xl, xu = lower and upper guesses
% es = desired relative error (default = 0.0001%)
% p1,p2,... = additional parameters used by func
% output:
% root = real root
if nargin<3 ,error('at least 3 input arguments required'), end
test = func(xl,varargin{:})*func(xu,varargin{:});
if test>0, error('no sign change'), end
if nargin<4|isempty(es), es=0.0001; end
iter = 0; xr = xl;
n = log2((xu-xl)/es);
while (1)
    xr = (xl + xu)/2;
    iter = iter + 1;
    test = func(xl,varargin{:})*func(xr,varargin{:});
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        iter = n;
    end
    if iter >= n, break, end
end
root = xr;
