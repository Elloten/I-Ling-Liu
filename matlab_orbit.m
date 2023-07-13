clc
clear
close all
format long
global a1 k1 b1 r1 a2 b2 r2 a3 u1 u2

T=1000;
tic

a1=1;k1=1000;b1=0.1;r1=0.1;ini_x1=0;
a2=0.1;b2=0;r2=0;ini_x2=1;
a3=0.1;u1=0.0;u2=0.0;ini_x3=0;

options1 = odeset('RelTol',1.0e-9,'AbsTol',[1.0e-11 1.0e-11 1.0e-11]);
[t,y]=ode45(@odeeq,[0 T],[ini_x1 ini_x2 ini_x3],options1);

toc

N=length(t);
figure(1)
hold on
plot(y(:,1),'y')
plot(y(:,2),'b')
plot(y(:,3),'r')
hold off
