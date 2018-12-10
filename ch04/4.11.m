i = 0; y = 1; x = pi/4;
while(1)
    i = i+1;
    y = y + (-1)^i*x^(2*i)/factorial(2*i);
    if y~=0
        err = abs((cos(pi/4)-y)/cos(pi/4))*100;
    end
    if err <=0.01, break, end
end
fprintf('cos(pi/4) = %f\n',y)
