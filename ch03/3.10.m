x = linspace(0,10);
u = zeros(size(x));
for i = 1:length(x)
    if x(i) >= 0 && x(i) <= 5
        u(i) = -5/6*x(i)^4+57/6*x(i)^3-238.25*x(i);
    elseif x(i) > 5 && x(i) <= 7
        u(i) = -5/6*(x(i)^4-(x(i)-5)^4)+57/6*x(i)^3-238.25*x(i);
    elseif x(i) > 7 && x(i) <= 8
        u(i) = -5/6*(x(i)^4-(x(i)-5)^4)+75*(x(i)-7)^2+57/6*x(i)^3-238.25*x(i);
    elseif x(i) > 8 && x(i) <= 10
        u(i) = -5/6*(x(i)^4-(x(i)-5)^4)+15/6*(x(i)-8)^3+...
            75*(x(i)-7)^2+57/6*x(i)^3-238.25*x(i);
    end
end
plot(x,u,'--')
