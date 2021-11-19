clear all;
close all;
clc;
% definition of x
x=input('Enter the value of x ');
nx=0:1;
subplot(4,1,1);
stem(nx,x);
grid on
xlabel('Time');
ylabel('Amplitude');
title('Definition of x ');
#To plot auto correlation and cross correlation of two sequences

% definition of h

h=input('Enter the value of h ');
nh=0:2;
subplot(4,1,2);
stem(nh,h);
grid on
xlabel('Time');
ylabel('Amplitude');
title('Definition of h ');

% Autocorreletion of x & x

x1=fliplr(x);
nx1=-1:0;
nylac=nx(1)+nx1(1);
nyrac=nx(length(x))+nx1(length(x1));
yac=conv(x,x1);
nyac=nylac:nyrac;
subplot(4,1,3);
stem(nyac,yac);
grid on
xlabel('Time');
ylabel('Amplitude');
title('Auto correletion');

% Crosscorreletion of x & h

h1=fliplr(h);
nh1=-2:0;
nylcc=nx(1)+nh1(1);
nyrcc=nx(length(x))+nh1(length(h1));
ycc=conv(x,h1);
nycc=nylcc:nyrcc;
subplot(4,1,4);
stem(nycc,ycc);
grid on
xlabel('Time');
ylabel('Amplitude');
title('Cross correletion');
