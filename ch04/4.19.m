x = linspace(0,pi);
y = x-1-0.5*sin(x);

f0 =@(x) x-1-0.5*sin(x);
f1 =@(x) 1-0.5*cos(x);
f2 =@(x) 0.5*sin(x);
f3 =@(x) 0.5*cos(x);
f4 =@(x) -0.5*sin(x);
h  = x-pi/2;

f = f0(pi/2); % zero-order
plot(x,y-f,'linewidth',2)
axis([0 pi -.02 .02]), hold on

f = f + f1(pi/2)*h % first-order
plot(x,y-f,'y','linewidth',2)

f = f + f2(pi/2)*h.^2/factorial(2); % second-order
plot(x,y-f,'r','linewidth',2.5)

f = f + f3(pi/2)*h.^3/factorial(3); % third-order
plot(x,y-f,'g','linewidth',1.5)

f = f + f4(pi/2)*h.^4/factorial(4); % fourth-order
plot(x,y-f,'m','linewidth',2)
plot([0 pi],[-.015 -.015],'k--',[0 pi],[.015 .015],'k--')
legend('zero-order','first-order','second-order','third-order','fourth-order')
