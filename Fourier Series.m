#To plot the magnitude and phase plot spectrum of signal using Fourier Series

clc;
clear all;
close all;
syms t;
T = pi;
w = 2*pi/T;
xt = exp(-t/2);
n = -4:4;
Cn = 1/T*int(xt*exp(-1j*w*n*t),t,0,T);
Cn = double(Cn)
magnitudeCn = abs(Cn) %magnitude
angleCn = angle(Cn) %angle
subplot(2,1,1);
stem(n,magnitudeCn);
grid on
xlabel('n');
ylabel('|Cn|');
title('Magnitude Plot');
subplot(2,1,2);
stem(n,angleCn);
grid on
xlabel('n');
ylabel('<Cn');
title('Phase Plot');
