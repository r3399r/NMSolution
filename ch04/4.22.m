x = pi/6; n = 11; h = 1;
H(1) = h;
D(1) = (cos(x+h)-cos(x-h))/(2*h);
E(1) = abs(-sin(x)-D(1));
for i=2:n
    h=h/10;
    H(i)=h;
    D(i)=(cos(x+h)-cos(x-h))/(2*h);
    E(i)=abs(-sin(x)-D(i));
end
L=[H' D' E']';
fprintf(' step size | finite difference | true error\n');
fprintf('%12.10f %16.14f %16.13f\n',L);
loglog(H,E), xlabel('Step Size','fontsize',14)
ylabel('Error','fontsize',14)
