%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% informasi yang dipakai
Fs=10;
Ts=1/Fs;
L=200;
t=(-(L)/2:(L)/2)*Ts;
a=1;
qt=exp(-a*t);

% FFT
Qt= fft(qt);
Qt_mag=abs(Qt);
Qt_double=fftshift(Qt_mag);
axis_double=((-L/2):L/2)*(Fs/L);

% plotting 
figure(1)
% domain waktu
subplot(2,1,1)
plot(t,qt)
title('Time Domain')
xlabel('Waktu (s)')
xlim([0 10])
ylim([0 1])
ylabel('Amplitude')
% domain frekuensi
subplot(2,1,2)
plot(axis_double,Qt_double)
title('Frequency Domain')
xlim([-5 5])
xlabel('Frekuensi (Hz)')
ylabel('Magnitude')