function V = ch3_01(R, d)
% Problem 3.1
% input:
% R = the tank's radius
% d = the depth
% output:
% V = volume
if d <= R
    V = 1/3*R^2*pi*R;
elseif d > R && d <=3*R
    V = 1/3*R^2*pi*R + (d-R)*R^2*pi;
elseif d > 3*R
    error('Overtop!')
end
