%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% informasi yang digunakan
Fs=0.1:0.1:10;
L=20;

for i=1:length(Fs)
 Ts=1/Fs(i);
 N=floor(Fs(i)*L);
 t=0:Ts:(L-Ts);
 x=cos(2*pi*0.25*t);
 % ploting
 figure(1)
 plot(t,x)
 title('Sampling of 0.25 Hz cosine signal','Fs = 2 Hz')
 xlabel('nTs')
 ylabel('x(nTs)')
 pause(0.2)
end