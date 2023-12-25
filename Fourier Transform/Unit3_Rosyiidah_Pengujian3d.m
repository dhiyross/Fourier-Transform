%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Fs=5;
Ts=1/Fs;
f=Ts*0.25;
L=20;
N=floor(Fs*L); % jumlah sample
n=0:N-1;
w=2*pi*(0:(N-1))/N;
x=cos(2*pi*f*n);

% rumus perhitungan area
Area=sum(x)./Fs;

%% DTFT 1
xf1=fft(x);
xdft1=abs(xf1)./N;
% plotting
figure(1)
hold on
stem(n,xdft1,'b')
title('Frequency domain of 0.25Hz cosine signal','Fs=2Hz & N=100 samples')
xlabel('k')
ylabel('Magnitude')
axis([0 N 0 1])
grid on

%% DTFT 2
xf2=fft(x,N);
xdtf2=abs(xf2)./N;
w0=fftshift(w);
w01=unwrap(w0-pi);
% plotting
figure(2)
hold on
plot(w01/(2*pi),xdtf2,'b')
title('Frequency domain of 0.25Hz cosine signal','Fs=2Hz & L=20 second')
xlabel('Frequency Vector')
ylabel('Magnitude')
axis([0 1 0 1])
grid on

%% DTFT 3
xf3=fft(x,N);
xdtf3=abs(xf3)./N;
w02=unwrap(w0-pi);
% plotting
figure(3)
hold on
plot(w02/pi, xdtf3,'b')
title('Frequency domain of 0.25Hz cosine signal','Fs=2Hz & L=20 second')
xlabel('Frequency Vector')
ylabel('Magnitude')
axis([0 2 0 1])
grid on