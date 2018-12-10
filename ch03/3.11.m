function ch3_11(r, L, plot_title)
% volume of horizontal cylinder
% inputs:
% r = radius
% L = length
% plot_title = string holding plot title
h = linspace(0,2*r);
V = zeros(size(h));
for i = 1:length(h)
    V(i) = (r^2*acos((r-h(i))/r)-(r-h(i))*sqrt(2*r*h(i)-h(i)^2))*L;
end
plot(h,V), title(plot_title), xlabel('depth'), ylabel('volume')
