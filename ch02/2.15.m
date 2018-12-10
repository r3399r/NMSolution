x=linspace(0,3*pi/2);
c=1-x.^2/factorial(2)+x.^4/factorial(4)-x.^6/factorial(6)+x.^8/factorial(8);
plot(x,c)
