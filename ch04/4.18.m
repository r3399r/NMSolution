i = 1; y = 1; x = 0.1;
while(1)
    y = y + x^i;
    if y~=0
        err = abs((1/0.9-y)/(1/0.9))*100;
    end
    if err <=0.01, break, end
    i = i+1;
end
fprintf('1/(1-x) = %.4f\n',y)
