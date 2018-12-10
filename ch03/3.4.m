w = 2*pi/365; t_peak = 205;
M = [22.1 28.3; % Miami
    23.1 33.6; % Yuma
    5.2 22.1; % Bismarck
    10.6 17.6; % Seattle
    10.7 22.9]; % Boston

    %% (a)
a = 0;
for t = 0:59
    T = M(2,1)+(M(2,2)-M(2,1))*cos(w*(t-t_peak));
    a = a + T;
end
a = a/60

%% (b)
b = 0;
for t = 180:242
    T = M(4,1)+(M(4,2)-M(4,1))*cos(w*(t-t_peak));
    b = b + T;
end
b = b/63
