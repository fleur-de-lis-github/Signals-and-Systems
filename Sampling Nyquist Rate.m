# Write a program of sampling at:
#A) Less than Nyquist rate (fs<2fm)
#B) Nyquist rate (fs = 2fm)
#C) Above Nyquist rate (fs>2fm)

clc;
close all;
clear all;
t=0:0.01:1;
fm=input('enter frequency fm'); xt=cos(2*pi*fm*t);subplot(411);
plot(t,xt);
title('cos function');
xlabel('time---->');
ylabel('amplitude------->');

%program sampling at (A)(fs<2fm):

fs1=1.3*fm;
n1=0:1/fs1:1;
xn1=cos(2*pi*fm*n1);
subplot(412);
plot(t,xt,'r',n1,xn1,'b');
title('undersmapling');
xlabel('time------->.');
ylabel('amplitude------->');

%program sampling at (B)(fs=2fm):

fs2=2*fm;
n2=0:1/fs2:1;
xn2=cos(2*pi*fm*n2);
subplot(413);
plot(t,xt,'r',n2,xn2,'b');
title('nyquist rate');
xlabel('time');
ylabel('amplitude');

%program sampling at(C)fs<2fm:

fs3=2.9*fm;
n3=0:1/fs3:1;
xn3=cos(2*pi*fm*n3);
subplot(414);
plot(t,xt,'r',n3,xn3,'b');
title('oversampling');
xlabel('time------->');
ylabel('amplitude------>');
