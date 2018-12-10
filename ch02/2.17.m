t=0:pi/64:6*pi;
x=t.*cos(6*t);
y=t.*sin(6*t);
z=t;
subplot(2,1,1)
plot(x,y,'r')
xlabel('x'), ylabel('y')
subplot(2,1,2)
plot3(x,y,z,'c')
xlabel('x'), ylabel('y'), zlabel('z')
