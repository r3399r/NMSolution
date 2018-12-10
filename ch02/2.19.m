g=9.81; v0=28; y0=0; 
theta=15:15:75;
x=0:5:80;
y=zeros(length(theta),length(x));
i=1;
for theta=15:15:75
       y(i,:)=tand(theta)*x-g/2/v0^2/(cosd(theta))^2*x.^2+y0;
       i=i+1;
   end
plot(x,y)
legend('15','30','45','60','75')
axis([0 80 0 50])
