P = 100000; i =0.05; n = 10;
disp('year    worth')
for j = 1:n
    F = P*(1+i)^j;
    fprintf('%3d %11.2f\n',j,F)
end
