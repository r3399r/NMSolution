R=8.314; E=1e5; A=7e16;
T=linspace(253,325);
k=A*exp(-E/R./T);
subplot(2,1,1)
plot(T,k,'g')
title('(a)'), xlabel('T'), ylabel('k')
subplot(2,1,2)
semilogy(1./T,k,'r')
title('(b)'), xlabel('1/T'), ylabel('k')
