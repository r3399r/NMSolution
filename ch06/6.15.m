% Newton-Raphson methond
pc = 4600; Tc = 191; R = 0.518;
T = -40+273; p = 65000;
a = 0.427*R^2*Tc^2.5/pc;
b = 0.0866*R*Tc/pc;
f = @(v) R*T/(v-b)-a/v/(v+b)/sqrt(T)-p;
df = @(v) a/(T^(1/2)*v*(b+v)^2)-(R*T)/(b-v)^2+a/(T^(1/2)*v^2*(b+v));
fplot(f,[10000,100000])
% x = 0.03;
% while(1)
%     xold = x;
%     x = x-f(x)/df(x);
%     if x ~= 0
%         ea = abs((x-xold)/x) * 100;
%     end
%     if ea < 0.01, break, end
% end
% x
