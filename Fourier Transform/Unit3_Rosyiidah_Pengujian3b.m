%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Frekuensi sampling 0.4 Hz
% informasi yang dipakai
Fs1=0.4;
Ts1=1/Fs1;
L1=20;
t1=0:Ts1:(L1-Ts1);
x1=cos(2*pi*0.25*t1);
N1=floor(Fs1*L1); % jumlah sample
% rumus perhitungan area
Area_1=sum(x1)./Fs1
% Ploting
figure(1)
hold on
plot(t1,x1)
stem(t1,x1)
title('Frekuensi sampling = 0.4 Hz')
xlabel('nTs')
ylabel('x(nTs)')
lgd=legend({'Approximated signal','Sampled signal'},'Location','southeast');
title(lgd,'Information')

%% Frekuensi sampling 0.5 Hz
% informasi yang dipakai
Fs2=0.5;
Ts2=1/Fs2;
L2=20;
t2=0:Ts2:(L2-Ts2);
x2=cos(2*pi*0.25*t2);
N2=floor(Fs2*L2); % jumlah sample
% rumus perhitungan area
Area_2=sum(x2)./Fs2 
% ploting
figure(2)
hold on
plot(t2,x2)
stem(t2,x2)
title('Frekuensi sampling = 0.5 Hz')
xlabel('nTs')
ylabel('x(nTs)')
lgd=legend({'Approximated signal','Sampled signal'},'Location','southeast');
title(lgd,'Information')

%% Frekuensi sampling 0.8 Hz
% informasi yang dipakai
Fs3=0.8;
Ts3=1/Fs3;
L3=20;
t3=0:Ts3:(L3-Ts3);
x3=cos(2*pi*0.25*t3);
N3=floor(Fs3*L3); % jumlah sample
% rumus perhitungan area
Area_3=sum(x3)./Fs3 
% ploting
figure(3)
hold on
plot(t3,x3)
stem(t3,x3)
title('Frekuensi sampling = 0.8 Hz')
xlabel('nTs')
ylabel('x(nTs)')
lgd=legend({'Approximated signal','Sampled signal'},'Location','southeast');
title(lgd,'Information')

%% Frekuensi sampling 5 Hz
% informasi yang dipakai
Fs4=5;
Ts4=1/Fs4;
L4=20;
t4=0:Ts4:(L4-Ts4);
x4=cos(2*pi*0.25*t4);
N4=floor(Fs4*L4); % jumlah sample
% rumus perhitungan area
Area_4=sum(x4)./Fs4 
% ploting
figure(4)
hold on
plot(t4,x4)
stem(t4,x4)
title('Frekuensi sampling = 5 Hz')
xlabel('nTs')
ylabel('x(nTs)')
lgd=legend({'Approximated signal','Sampled signal'},'Location','southeast');
title(lgd,'Information')

%% Frekuensi sampling 10 Hz
% informasi yang dipakai
Fs5=10;
Ts5=1/Fs5;
L5=20;
t5=0:Ts5:(L5-Ts5);
x5=cos(2*pi*0.25*t5);
N5=floor(Fs5*L5); % jumlah sample
% rumus perhitungan area
Area_5=sum(x5)./Fs5 
% ploting
figure(5)
hold on
plot(t5,x5)
stem(t5,x5)
title('Frekuensi sampling = 10 Hz')
xlabel('nTs')
ylabel('x(nTs)')
lgd=legend({'Approximated signal','Sampled signal'},'Location','southeast');
title(lgd,'Information')

%% Frekuensi sampling 1000 Hz
% informasi yang dipakai
Fs6=1000;
Ts6=1/Fs6;
L6=20;
t6=0:Ts6:(L6-Ts6);
x6=cos(2*pi*0.25*t6);
N6=floor(Fs6*L6); % jumlah sample
% rumus perhitungan area
Area6=sum(x6)./Fs6 
% ploting
figure(6)
hold on
plot(t6,x6)
stem(t6,x6)
title('Frekuensi sampling = 1000 Hz')
xlabel('nTs')
ylabel('x(nTs)')
lgd=legend({'Approximated signal','Sampled signal'},'Location','southeast');
title(lgd,'Information')
