%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% informasi yang dipakai
Fs=1;
T=3;
Ts=1/Fs;
L=1000;
t=(-L/2:L/2)*Ts;
lt=length(t);

% input vektor p
pt=[];
for i = 1:lt
    if abs(t(i))<T
        pt=[pt 1];
    else
        pt=[pt 0];
    end
end

% FFT
Pt= fft(pt);
Pt_mag=abs(Pt);
Pt_double=fftshift(Pt_mag);
axis_double=((-L/2):L/2)*(Fs/L);

% plotting
figure(1)
% domain waktu
subplot(2,1,1)
stem(t,pt)
title('Time Domain')
xlim([-10 10])
xlabel('t(s)')
ylabel('Amplitude')
% domain frekuensi
subplot(2,1,2)
plot(axis_double,Pt_double)
title('Frequency Domain')
xlabel('Frekuensi (Hz)')
ylabel('Magnitude')