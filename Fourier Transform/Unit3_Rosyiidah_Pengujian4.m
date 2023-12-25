%% Rosyiidah Dhiya'Ulhaq
%% 19/446468/TK/49573
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=some_signal'; % agar matriks masukkan merupakan matriks tegak
N=size(x,1);    % untuk mengetahui ukuran matrix xn
w=zeros(N,N);   % untuk membangun matrix omega dengan besar NxN
% mengisi dengan nilai w^0=1
for a=1:N
    for b=1:N
        w(a,1)=1;
        w(1,b)=1;
    end
end
% persamaan euler dari omega
for a=1:N-1
    for b=1:N-1
        w(a+1,b+1)=cos(2*pi*a*b/N)-sin(2*pi*a*b/N)*i;
    end
end

X=w.*x; % hasil DFT
M=abs(X);

C=0:N-1; % axis untuk mem-plot sumbu-x
c=C';

%% Ploting
plot(c,M,'r')
title('Kombinasi Linier DFT')
xlabel('t(s)')
ylabel('Amplitudo')