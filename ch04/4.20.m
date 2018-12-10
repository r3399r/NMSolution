  h = 0.25;
  i = -2:h:2
  f =@(x) x.^3-2*x+4;
 df =@(x) 3*x.^2-2;
ddf =@(x) 6*x;

df_forward  = (f(i+h)-f(i)  )/h;
df_backward = (f(i)  -f(i-h))/h;
df_centered = (f(i+h)-f(i-h))/(2*h);

ddf_forward = (f(i+2*h)-2*f(i+h)+f(i))    /h^2;
ddf_backward= (f(i)    -2*f(i-h)+f(i-2*h))/h^2;
ddf_centered= (f(i+h)  -2*f(i)  +f(i-h))  /h^2;

figure;
plot(i,df(i),i,df_forward,i,df_backward,i,df_centered)
title('first derivative','fontsize',14)
legend('theoretical','forward','backward','centered')

figure;
plot(i,ddf(i),i,ddf_forward,i,ddf_backward,i,ddf_centered)
title('second derivative','fontsize',14)
legend('theoretical','forward','backward','centered')
