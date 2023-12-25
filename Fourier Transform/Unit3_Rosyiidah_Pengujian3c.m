%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% informasi yang dipakai
Fs=5;
Ts=1/Fs;
L=20;
t=0:Ts:(L-Ts);
x=cos(2*pi*0.25*t);
N=floor(Fs*L); % jumlah sample

% rumus perhitungan  area
Area=sum(x)./Fs

% ploting
figure(1)
plot(t,x)
hold on
stem(t,x)
title('Discrete time and Discrete frequency')
xlabel('t(s)')
ylabel('Cosinus Signal')