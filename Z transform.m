#To find the z transform of a given causal system and check the stability using pole zero location.
#Y (n) = 0.9 y (n-1) +x (n)

%z transform
clc;
close all; clear all;
b=[1]; a=[1 -0.9];
zplane(b,a);
w=[-200:1:200]*pi/100; H=freqz(b,a,w);
magH=abs(H)
angH=angle(H)
figure;
subplot(211);
plot(w/pi,magH);
xlabel('frequency in pi units '); ylabel('magnitude');
title('magnitude response');
subplot(212);
plot(w/pi,angH);
xlabel('frequency in pi units ');
ylabel('phase in pi units');
title('phase response');
