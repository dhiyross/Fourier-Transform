%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% informasi yang dipakai
Fs=100;
Ts=1/Fs;
L=200;
t=(-L:L-1)*Ts; 
nmax=100;

for periode=2:8
    T=periode;
    w0=2*pi/T;
    x=1;
    for n=1:nmax
        a=(2.*(1/(n*pi))*(sin((n*pi)/2)))*cos(n*w0*t);
        b=0;
        x=x+a+b;
    end
    
    %Transformasi Fast-Fourier (fft)
    rt=fft(x);
    rt_mag=abs(rt)./L;
    rt_double=fftshift(rt_mag);
    axis_double=((-L):L-1)*(Fs/L);
    
    % ploting
    figure(periode)
    % domain waktu
    subplot(3,1,1)
    plot(t,x)
    title('Representasi deret Fourier isyarat r(t)')
    xlabel('Waktu (s)')
    ylabel('Amplitudo')
    % domain frekuensi (stem)
    subplot(3,1,2)
    stem(axis_double,rt_double,'b')
    axis([-10 10 0 2])
    title('Frequency Domain','Stem Ploting');
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
    % domain frekuensi (plot)
    subplot(3,1,3)
    plot(axis_double,rt_double);
    axis([-10 10 0 max(rt_double)])
    title('Frequency Domain','Plot Ploting');
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
end