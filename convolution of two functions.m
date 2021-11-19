# To plot convolution of two functions

clc;
clear all;
close all;

%defination of i/p sequence

x=input('Enter the value of x');
nx=0:1;
subplot(3,1,1);
stem(nx,x);grid on;
title('Input Sequence');
xlabel('Time');
ylabel('Amplitude');

%Definatation of impulse sequence h

h=input('Enter the value of h');
nh=0:2;
subplot(3,1,2);
stem(nh,h);grid on;
title('Input impulse seq.');
xlabel('Time');
8ylabel('Amplitude');

%Convolution of x & h

nyl=nx(1)+nh(1);
nyr=nx(length(x))+nh(length(h));
ny=nyl:nyr;
y=conv(x,h)
subplot(3,1,3);
stem(ny,y);grid on;t
title('output Sequence');
xlabel('Time');
ylabel('Amplitude');

