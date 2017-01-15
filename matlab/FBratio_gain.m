%This is a script to display a graph illustrating the relationship
%Between bandwidth and feedback ratio for amplifiers
ADC = 100e3;
BW = 10e6;
Fopen = BW/ADC;
Fbx = BW/100;
Fb1 = BW;

f = logspace(-1,8);
G = 20*log10(abs(BW./(j*Fopen+f)));
H = 20*log10(abs(BW./(j*Fbx+f)));
U = 20*log10(abs(BW./(j*Fb1+f)));

zero = ones(size(f));

semilogx(f,G,'--','Color','k','Linewidth',1.5); hold on;
semilogx(f,H,'--','Color','b','Linewidth',1.5);
semilogx(f,U,'--','Color','r','Linewidth',1.5); hold off;
axis([1 BW*10 -10 110])
grid on
grid minor

legend('b = 0', '0 < b < 1', 'b = 1')
set(gcf,'Color','white')
title('Feedback Ratio (b) and Bandwidth')
xlabel('frequency');
ylabel('Gain (dB)');
