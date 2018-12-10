function ch3_05(x)
% Problem 3.5
% input x then get sin(x) & relative error
y = 0;
for i = 1:8
    y = y + (-1)^(i-1)*x^(2*i-1)/factorial(2*i-1);
end
err = (sin(x)-y)/sin(x)*100;
fprintf('    true sin(%.2f)= %f\n',x,sin(x))
fprintf('estimate sin(%.2f)= %f\n',x,y)
fprintf('percent relative error= %e\n',err)
