theta=0:pi/32:8*pi;
r=exp(sin(theta))-2*cos(4*theta)-(sin((2*theta-pi)/24)).^5;
polar(theta,r,'r--')
