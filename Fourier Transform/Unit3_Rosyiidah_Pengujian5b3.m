%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% informasi yang dipakai
Fs=10;
Ts=1/Fs;
L=1000;
t=(-L:L)*Ts;
a=0.5;

% delta function
ra=dirac(t-a);
rx=ra==Inf; 
ra(rx)=1;     
rb=dirac(t+a);
rx=rb==Inf; 
rb(rx)=1;     
rt=0.5*(ra+rb);

% FFT
Rt=fft(rt);
Rt_mag=abs(Rt);
Rt_double=fftshift(Rt_mag);
axis_double=(-L:L)*(Fs/L);
% plotting 
figure(1)
% domain waktu
subplot(2,1,1)
stem(t,rt)
title('Time Domain')
xlabel('t(s)')
xlim([-10 10])
ylim([0 0.6])
ylabel('Amplitude')
% domain frekuensi
subplot(2,1,2)
plot(axis_double,Rt_mag)
title('Frequency Domain')
xlim([-pi pi])
ylim([0 1.5])
xlabel('Frekuensi (rad/s)')
ylabel('Magnitude')
xticks(-pi:pi/4:pi);
xticklabels({'$-\pi$', '-$\frac{3}{4}\pi$','-$\frac{1}{2}\pi$','-$\frac{1}{4}\pi$','0','$\frac{1}{4}\pi$','$\frac{1}{2}\pi$', '$\frac{3}{4}\pi$', '$\pi$'});
set(gca,'TickLabelInterpreter', 'latex') 