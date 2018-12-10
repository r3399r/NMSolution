L=6; E=500000; I=3; w0=0.25; dx=0.1;
x=0:dx:L;
a=w0/120/E/I/L*(-x.^5+2*L^2*x.^3-L^4*x);
b=w0/120/E/I/L*(-5*x.^4+6*L^2*x.^2-L^4);
c=w0/120/L*(-20*x.^3+12*L^2*x);
d=w0/120/L*(-60*x.^2+12*L^2);
e=-w0/120/L*-120*x;
subplot(5,1,1), plot(x,a), ylabel('y')
subplot(5,1,2), plot(x,b), ylabel('\theta')
subplot(5,1,3), plot(x,c), ylabel('M')
subplot(5,1,4), plot(x,d), ylabel('V')
subplot(5,1,5), plot(x,e), ylabel('w')
xlabel('x')
