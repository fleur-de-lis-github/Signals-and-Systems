#To plot unit step, unit impulse, ramp, exponential functions & sinusoidal signals.

%Generation of sine wave

t=0:0.01:pi;
x=sin(2*pi*t);
subplot(3,2,1);
plot(t,x);
title(‘sine wave’);
xlabel(‘time’);
ylabel(‘amplitude’);

%Generation of cosine wave t=0:0.01:pi;

Y=cos(2*pi*t);
subplot(3,2,2);
plot(t,y);
title(‘cosine wave’);
xlabel(‘time’);
ylabel(‘amplitude’);

%Generation of Ramp wave

n=0,N-1;
r=n;
subplot(3,2,3);
stem(n,r);
title(‘Ramp signal’);
xlabel(‘time’);
ylabel(‘amplitude’);

%Generation of exponential wave

N=input(‘enter the value of N’);
n=0:N-1;
a=input(‘enter the value of a’);
e=exp(a*n);
subplot(3,2,4);
stem(n,e);
title(‘Exponential signal’);
xlabel(‘time’);
ylabel(‘amplitude’);

%Generation of unit step function

s=ones(1,N);
subplot(3,2,5);
stem(n,s);
title(‘unit step function’);
xlabel(‘time’);
ylabel(‘amplitude’);

%Generation of unit impulse

ni=-2:1:2;
I=[zeros(1,2) ones(1,1) zeros(1,2)];
subplot(3,2,6);
stem(ni,I);
title(‘unit impulse function’);
xlabel(‘time’);
ylabel(‘amplitude’);


