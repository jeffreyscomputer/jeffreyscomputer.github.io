ADC = 100e3;
BW = 10e6;
Fp = BW/ADC;

f = 1:10:BW*10;
G = BW./(Fp+f);
H = BW./(Fp*1e3+f);
U = BW./(Fp*1e5+f);

zero = ones(size(f));

loglog(f,G,'--','Color','k','Linewidth',1.5); hold on;
loglog(f,H,'--','Color','b','Linewidth',1.5); 
loglog(f,U,'--','Color','r','Linewidth',1.5); hold off;
axis([1 BW*10 .1 ADC*10])
grid on
grid minor

legend('b = 0', '0 < b < 1', 'b = 1')
set(gcf,'Color','white')
title('Feedback Ratio (b) and Bandwidth')
xlabel('frequency');
ylabel('Gain');