t = linspace(-5,50);
v = zeros(size(t));
for i = 1:length(t)
    if t(i)>=0 && t(i)<=8
        v(i) = 10*t(i)^2-5*t(i);
    elseif t(i)>=8 && t(i)<=16
        v(i) = 624-5*t(i);
    elseif t(i)>=16 && t(i)<=26
        v(i) = 36*t(i)+12*(t(i)-16)^2;
    elseif t(i)>26
        v(i) = 2136*exp(-0.1*(t(i)-26));
    else
        v(i) = 0;
    end
end
plot(t,v), xlabel('t'), ylabel('v')
