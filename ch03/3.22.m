function ch3_22(r, nt, nm)
% function to show the orbit of a phasor
% r = radius
% nt = number of increments for theta
% nm = number of movies
t = 0; dt = 2*pi/(nt-1); n = 1;
for i = 1:nt
    x = r*cos(t);
    y = r*sin(t);
    plot(x,y,'o','MarkerFaceColor','b','MarkerSize',8)
    axis([-1.2*r 1.2*r -1.2*r 1.2*r])
    if t >= 2*pi/(nm-1)*(n-1)
        M(n) = getframe;
        n = n+1;
    end
    t = t+dt;
end
pause
movie(M,1)
