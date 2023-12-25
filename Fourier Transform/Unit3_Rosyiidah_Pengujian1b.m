%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% informasi yang diperlukan
t=0:0.01:8;
teta1=(pi/4.*t);
teta2=(-pi/4.*t);

rcos=1/(2);
r2=1/(2*1i);
%mengubah koordinat polar ke koordinat kartesian
% cosinus 
[x3,y3]=pol2cart(teta1,rcos);
[x4,y4]=pol2cart(teta2,rcos);
% sinus
[x7,y7]=pol2cart(teta1,r2);
[x8,y8]=pol2cart(teta2,r2);

% nilai zcos
zcos3=x3+1i*y3;
zcos4=x4+1i*y4;
zcos=zcos3+zcos4;
% nilai zsin
zsin3=x7+1i*y7;
zsin4=x8+1i*y8;
zsin=zsin3-zsin4;

% plot grafik fungsi
figure(1)
% cosinus
subplot(2,1,1)
plot(t,zcos)
xlabel('Waktu')
ylabel('Amplitudo')
title('isyarat cosinus')
% sinus
subplot(2,1,2)
plot(t,zsin)
xlabel('Waktu')
ylabel('Amplitudo')
title('isyarat sinus')