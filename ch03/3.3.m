P = 100000; i = 0.033; n = 5;
disp('n      A')
for j = 1:n
    A = P*i*(1+i)^j/((1+i)^j-1);
    fprintf('%1d %10.2f\n',j,A)
end
