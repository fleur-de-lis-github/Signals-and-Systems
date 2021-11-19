#To plot the magnitude and phase plot spectra of signal using Fourier Transforms.

clc;
clear all;
close all;
syms t omega;
xt = 2;
expw = exp (-j*omega*t) ;
xjw = int (xt*expw,omega,-2,2) ;
xjw = simplify (xjw) ;
figure (1) ;
subplot (2,1,1) ;
ezplot ('2',[-2 2]) ; 
subplot (2,1,2) ;
ezplot(xjw); 


