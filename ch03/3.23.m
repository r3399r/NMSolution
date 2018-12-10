t=0:1/16:100; n = 0;
for i = 1:length(t)
    n = n+1;
    x(i) = sin(t(i)).*(exp(cos(t(i)))-2*cos(4*t(i))-(sin(t(i)/12)).^5);
    y(i) = cos(t(i)).*(exp(cos(t(i)))-2*cos(4*t(i))-(sin(t(i)/12)).^5);
    plot(x,y), hold on
    plot(x(i),y(i),'o','MarkerFaceColor','b','MarkerSize',8)
    axis square, axis([-5 5 -4 4])
    M(i) = getframe;
    hold off
end
movie(M,1)
