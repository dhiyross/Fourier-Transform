%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% informasi yang dpakai
Fs=5;
Ts=1/Fs;
L=100;
N=floor(Fs*L);
t=(-0.5*L:0.5*L)*Ts;
x=cos(2*pi*0.25*t);

% rumus perhitungan area
Area=sum(x)./Fs;

axis_single=(0:0.99*L)*(Fs/L);

% Transformasi Fast-Fourier (fft)
F=fft(x);
F_mag=abs(F)./L;
F_single=F_mag(1:(0.5*L)+0.5*L);
F_single(1:(0.5*L)+1)=2*F_single(1:(0.5*L)+1);

% plotting
% dalam Hz
figure(1)
plot(axis_single,F_single);
title('FT secara One-Sided','Frequency Domain (Hz)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0 2])
ylim([0 2])
% dalam rad/s
figure(2)
plot(axis_single,F_single);
title('FT secara One-Sided','Frequency Domain (rad/s)');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
xticks([0 0.5*pi])
xticklabels({'0', '0.5\pi'})
xlim([0 0.5*pi])
ylim([0 2])