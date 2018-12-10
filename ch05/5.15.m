P_u_max = 80000; P_u_min = 110000; k_u = 0.05;
P_s_max = 320000; P_0 = 10000; k_s = 0.09;

P_u =@(t) P_u_max*exp(-k_u*t) + P_u_min;
P_s =@(t) P_s_max./(1+(P_s_max/P_0-1)*exp(-k_s*t));

xl = 0; xu = 80;
t = linspace(xl,xu);
plot(t,P_s(t),t,P_u(t),t,P_u(t)*1.2,'--')
legend('suburban','urban','urban*1.2'), grid on
 
xr = xl; ea = 100;
while(1)
    xrold = xr;
    xr = xu-((P_u(xu)*1.2-P_s(xu))*(xl-xu))/...
        ((P_u(xl)*1.2-P_s(xl))-(P_u(xu)*1.2-P_s(xu)));
    if xr ~= 0
        ea = abs((xr - xrold)/xr) * 100;
    end
    test = (P_u(xl)*1.2-P_s(xl)) * (P_u(xr)*1.2-P_s(xr));
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea <= 0.01, break, end
end
fprintf('time: %f\n',xr)
fprintf('urban population: %f\n',P_u(xr))
fprintf('suburban population: %f\n',P_s(xr))
