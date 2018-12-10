function [theta,c,mc] = ch3_20(a, b)
% theta: cosine of the angle between a & b's tails
% c : vector c (a cross b = c)
% mc: magnitude of vector c
m = sum(a.*b);
theta = acos(m/sqrt(sum(a.^2))/sqrt(sum(b.^2)));
c = zeros(1,3);
c(1) = a(2)*b(3)-a(3)*b(2);
c(2) = a(3)*b(1)-a(1)*b(3);
c(3) = a(1)*b(2)-a(2)*b(1);
mc = sqrt(sum(c.^2));
quiver3(0,0,0,a(1),a(2),a(3)), hold on
quiver3(0,0,0,b(1),b(2),b(3))
quiver3(0,0,0,c(1),c(2),c(3))
legend('a','b','c')
xlabel('x'), ylabel('y'), zlabel('z')
