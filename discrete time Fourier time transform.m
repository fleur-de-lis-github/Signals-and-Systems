# Determine and plot discrete time Fourier time transform of the following: - (A) Rectangularfunction (B) Sinusoidalfunction.

clc;
clear all;
close all;

%1.Rectangular Function:

n1=-2:2;
xn=ones(1,5);
k=-400:400;
w=(pi/100)*k;
Xw=xn1*(exp(-1*j*pi/100).^(n1'*k)); magXw1=abs(Xw);
subplot(221)
stem(-8:8,[zeros(1,6) xn1 zeros(1,6)]);
xlabel('n');
ylabel('x');
title('Rectangular Signal');
subplot(223)
plot(w/pi,magXw1);
xlabel('frequency in pi units');
ylabel('magnitude');
title('DTFT');
n2=0:100;
xn2=cos(pi*n2/4);
                           
%2.Sinusoidal Signal:
                           
Xw2=xn2*(exp(-1*j*pi/100).^(n2'*k)); magXw2=abs(Xw2);
subplot(222)
stem(n2,xn2);
axis([0 100 -1.5 1.5]);
xlabel('n');
ylabel('xn');
title('sinusoidal signal');
subplot(224)
plot(w/pi,magXw2);
xlabel('frequency in pi units');
ylabel('magnitude');
title('DTFT');                           
