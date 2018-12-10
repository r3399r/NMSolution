% 1:  285 @ 10
% 2: -150 @ 2
% 3: -300 @ 4.5
% 4:  265 @ 0
% 5: -100 @ 12
xl = 0; xu = 12;
xr = xl;
while(1)
    xrold = xr;
    xr = (xl + xu)/2;
    if xr ~= 0
        ea = abs((xr - xrold)/xr) * 100;
    end
    test = (xr-2)*150 + (xr-4.5)*300 + (xr-12)*100 ...
        -xr*265 - (xr-10)*285;
    if test > 0
        xu = xr;
    elseif test < 0
        xl = xr;
    else
        ea = 0;
    end
    if ea <= 0.001, break, end
end
fprintf('there is no mement at %f\n',xr)
