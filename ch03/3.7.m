function ch3_07(x, y)
% Problem 3.6
% input x & y then get r & theta
r = sqrt(x.^2+y.^2);
theta = zeros(size(x));
for i = 1:length(x)
    if x(i) < 0 && y(i) > 0
        theta(i) = atan(y(i)/x(i))+pi;
    elseif x(i) < 0 && y(i) < 0
        theta(i) = atan(y(i)/x(i))-pi;
    elseif x(i) < 0 && y(i) == 0
        theta(i) = pi;
    elseif x(i) == 0 && y(i) > 0
        theta(i) = pi/2;
    elseif x(i) == 0 && y(i) < 0
        theta(i) = -pi/2;
    elseif x(i) == 0 && y(i) == 0
        theta(i) = 0;
    else
        theta(i) = atan(y(i)/x(i));
   end
end
fprintf(' x  y    r      theta\n')
for i =1:length(x)
    fprintf('%2d %2d %.5f %8.5f\n',x(i),y(i),r(i),theta(i))
end
