%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% informasi yang dipakai
Fs=5;
Ts=1/Fs;
L=100;
N=floor(Fs*L);
t=(0:L-1)*Ts;
x=cos(2*pi*0.25*t);

%rumus perhitungan area
Area=sum(x)./Fs;

axis_double=((-L)/2:L/2-1)*(Fs/L);

% Transformasi Fast-Fourier (fft)
Mt=fft(x);
Mt_mag=2*(abs(Mt)./L);
Mt_double=fftshift(Mt_mag);

% plotting
% dalam Hz
figure(1)
plot(axis_double,Mt_double);
title('FT secara Two-Sided','Frequency Domain (Hz)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([-1 1])
ylim([0 1])
% dalam rad/s
figure(2)
plot(axis_double,Mt_double);
title('FT secara Two-Sided','Frequency Domain (rad/s)');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
xticks([-pi -0.5*pi 0 0.5*pi pi])
xticklabels({'-\pi', '-0.5\pi', '0', '0.5\pi', 'pi'})
xlim([-pi pi])
ylim([0 1])