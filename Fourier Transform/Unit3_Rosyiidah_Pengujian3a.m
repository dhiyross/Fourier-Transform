%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
L=5;
%% F=10^0
% informasi yang dipakai
Fs1=10^0;
ts1=1/Fs1;
t=0:ts1:(L-ts1);
x=cos(2*pi*0.25*t);
N1=floor(Fs1*L); % jumlah sample
% rumus perhitungan area
Area_1=sum(x)./Fs1
% ploting
figure(1)
plot(t,x)
title('Sampling process','[From Integration to Summation]')
xlabel('t(s)')
ylabel('Cosinus Signal')

%% F=10^2
% informasi yang dipakai
Fs2=10^2;
ts2=1/Fs2;
t2=0:ts2:(L-ts2);
x2=cos(2*pi*0.25*t2);
N2=floor(Fs2*L); % jumlah sample
% rumus perhitungan area
Area_2=sum(x2)./Fs2
% ploting
figure(2)
plot(t2,x2)
title('Sampling process','[From Integration to Summation]')
xlabel('t(s)')
ylabel('Cosinus Signal')

%% F=10^3
% informasi yang dipakai
Fs3=10^3;
ts3=1/Fs3;
t3=0:ts3:(L-ts3);
x3=cos(2*pi*0.25*t3);
N3=floor(Fs3*L); % jumlah sample
% rumus perhitungan area
Area_3=sum(x3)./Fs3
% ploting
figure(3)
plot(t3,x3)
title('Sampling process','[From Integration to Summation]')
xlabel('t(s)')
ylabel('Cosinus Signal')

%% F=10^4
% informasi yang dipakai
Fs4=10^4;
ts4=1/Fs4;
t4=0:ts4:(L-ts4);
x4=cos(2*pi*0.25*t4);
N4=floor(Fs4*L); % jumlah sample
% rumus perhitungan area
Area_4=sum(x4)./Fs4
% ploting
figure(4)
plot(t4,x4)
title('Sampling process','[From Integration to Summation]')
xlabel('t(s)')
ylabel('Cosinus Signal')

%% F=10^5
% informasi yang dipakai
Fs5=10^5;
ts5=1/Fs5;
t5=0:ts5:(L-ts5);
x5=cos(2*pi*0.25*t5);
N5=floor(Fs5*L); % jumlah sample
% rumus perhitungan area
Area_5=sum(x5)./Fs5
% ploting
figure(5)
plot(t5,x5)
title('Sampling process','[From Integration to Summation]')
xlabel('t(s)')
ylabel('Cosinus Signal')