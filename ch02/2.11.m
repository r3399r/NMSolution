t1=[10 20 30 40 50 60];
c1=[3.4 2.6 1.6 1.3 1 .5];
t2=linspace(0,70);
c2=4.84*exp(-0.034*t2);
plot(t1,c1,'rd','MarkerFaceColor','r'), hold on
plot(t2,c2,'g--')
