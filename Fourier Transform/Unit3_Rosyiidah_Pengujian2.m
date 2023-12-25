%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% informasi yang dipakai
T=4;
w0=2*pi/T;
koef=4;
x=-1;

% perhitungan nilai koefisien
for n=1:koef
    cn(n)=((-exp(3*1i*n*w0)-(3*exp(-1i*n*w0))+4))/(6*1i^2*n^2*w0^2);
    cna=angle(cn);
end
cn_mag=abs(cn);

% plotting 
figure(1)
c0=1;
c0a=pi;
n=1:koef;
% magnitude
subplot(2,1,1)
hold on
stem(0,c0,'m')
stem(n,cn_mag,'m')
stem(-n,cn_mag,'m') 
hold off
title('Koefisien Fourier : Magnitude')
xlabel('n')
ylabel('Magnitude')
% phase
subplot(2,1,2)
hold on
stem(0,c0a,'b')
stem(n,cna,'b')
stem(-n,-cna,'b') 
yticks([-pi -3*pi/4 -pi/2 -pi/4 0 pi/4 pi/2 3*pi/4 pi])
yticklabels({'-\pi', '-3/4\pi', '-1/2\pi', '-1/4\pi', '0', '1/4\pi', '1/2\pi', '3/4\pi', '\pi'})
hold off
title('Koefisien Fourier : Phase')
xlabel('n')
ylabel('Phase (radian)')