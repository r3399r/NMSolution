function [r, theta] = ch3_06(x, y)
% Problem 3.6
% input x & y then get r & theta
r = sqrt(x^2+y^2);
if x < 0 && y > 0
    theta = atan(y/x)+pi;
elseif x < 0 && y < 0
    theta = atan(y/x)-pi;
elseif x < 0 && y == 0
    theta = pi;
elseif x == 0 && y > 0
    theta = pi/2;
elseif x == 0 && y < 0
    theta = -pi/2;
elseif x == 0 && y == 0
    theta = 0;
else
    theta = atan(y/x);
end
