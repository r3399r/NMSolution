i = 1; y = 0; x = pi/4;
while(1)
    y = y + (-1)^(i-1)*x^(2*i-1)/factorial(2*i-1);
    if y~=0
        err = abs((sin(pi/4)-y)/sin(pi/4))*100;
    end
    if err <=0.01, break, end
    i = i+1;
end
fprintf('sin(pi/4) = %f\n',y)
