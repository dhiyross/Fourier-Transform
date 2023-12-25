%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% informasi yang dipakai
Fs=5;
w0=2*pi/4;
Ts=1/Fs;
t=0:Ts:(L-Ts);
L=4;
Lt=length(t);
N=floor(Fs*L);
x=[];
axis_double=(-N/2:(N/2)-1);
n=(axis_double*Fs*2*pi)/N;

for i=1:Lt
    if t(i) < 1 
        x_t=2*t(i)-2; 
    else 
        x_t=(2-2*t(i))/3; 
    end 
    x = [x x_t]; 
end

% Transformasi Fast-Fourier (fft)
X=fft(x);
X_mag=(abs(X))./N;
X_double=fftshift(X_mag);

% plotting
figure(1)
stem(n,X_double,'b')
xlim([-4 4])
hold off
xticks([-2*pi:pi/2:2*pi]);
xticklabels({'-4\omega_0', '-3\omega_0', '-2\omega_0', '\omega_0', 0, '\omega_0', '2\omega_0', '3\omega_0', '4\omega_0'});
xlim([-2.1*pi 2.1*pi]) 
title('Magnitude Response');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');