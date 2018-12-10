x = 0.5; n = 11; h = 1;
f =@(t) -0.1*t^4-0.15*t^3-0.5*t^2-0.25*t+1.2;
df_forward = (f(x+h)-f(x))/h;
H(1) = h;
D(1) = (cos(x+h)-cos(x-h))/(2*h);
E(1) = abs(df_forward-D(1));
for i=2:n
    h=h/10;
    H(i)=h;
    D(i)=(cos(x+h)-cos(x-h))/(2*h);
    df_forward = (f(x+h)-f(x))/h;
    E(i)=abs(df_forward-D(i));
end
L=[H' D' E']';
fprintf(' step size | finite difference | true error\n');
fprintf('%12.10f %16.14f %16.13f\n',L);
loglog(H,E), xlabel('Step Size','fontsize',14)
ylabel('Error','fontsize',14)
