%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% informasi yang diperlukan
t=0:0.01:8;
omega1=(pi/4);
omega2=(-pi/4);
rcos=1/(2);
rsin=1/(2*1i);

% mengkonvert dari koordinat polar ke koordinat rectangular
[x1,y1]=pol2cart(omega1,rcos);
[x2,y2]=pol2cart(omega2,rcos);
[x3,y3]=pol2cart(omega1,rsin);
[x4,y4]=pol2cart(omega2,rsin);

% nilai z
zcos1=x1+1i*y1;
zsin1=x3+1i*y3;
zcos2=x2+1i*y2;
zsin2=x4+1i*y4;

% plottingan
figure(1)
% cosinus
subplot(1,2,1)
hold on
plot(zcos1,'*')
text(0.35,0.38,'omega 1')
plot(zcos2,'*')
text(0.35,-0.38,'omega 2')
axis equal
axis([-0.5 0.5 -0.5 0.5])
grid on 
xlabel('Real')
ylabel('Imajiner')
title('Bidang Kompleks Cosinus')
hold off
% sinus
subplot(1,2,2)
hold on
plot(zsin1,'*')
text(0.35,-0.38,'omega 1')
plot(zsin2,'*')
text(-0.35,-0.38,'omega 2')
axis equal
axis([-0.5 0.5 -0.5 0.5])
grid on 
xlabel('Real')
ylabel('Imajiner')
title('Bidang Kompleks Sinus')
hold off