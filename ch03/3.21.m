g=9.81; theta0=50*pi/180; v0=5;
t(1) = 0; x = 0; y = 0; CR = 0.8;
plot(x,y,'o','MarkerFaceColor','b','MarkerSize',8)
axis([0 8 0 0.8])
M(1)=getframe;
dt=1/128; n = 1; x0 = 0;
for i =1:20
    j = 1;
    while(1)
        j = j+1; n = n+1;
        t(j) = t(j-1)+dt;
        x = x0 + v0*cos(theta0)*t(j);
        y = v0*sin(theta0)*t(j)-0.5*g*t(j)^2;
        plot(x,y,'o','MarkerFaceColor','b','MarkerSize',8)
        axis([0 8 0 0.8])
        M(n) = getframe;
        if y<=0, break, end
    end
    v0 = v0*CR; y = 0; x0 = x;
end
