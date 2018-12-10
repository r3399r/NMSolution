a=2; b=5;
x=0:pi/40:pi/2;
y=b*exp(-a*x).*sin(b*x).*(0.012*x.^4-0.15*x.^3+0.075*x.^2+2.5*x);
z=y.^2;
w=[x;y;z];
plot(x,y,'rp-.','LineWidth',1.5,'MarkerFaceColor','w','MarkerSize',14)
hold on
plot(x,z,'s-','MarkerFaceColor','g')
xlabel('x'), legend('y','z')
