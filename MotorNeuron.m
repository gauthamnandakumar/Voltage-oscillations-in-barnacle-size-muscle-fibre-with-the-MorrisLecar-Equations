clc
close all
clear all
Cm=20;
fai_Ca=0.1;
fai_K=0.067;
g_Ca=40;
g_K=0;
g_L=2;
V_Ca=30;
V_K=-70;
V_L=-50;
V1=0;
V2=15;
V3=10;
V4=10;
sim('Biosimp3')
v=Voltage.data;
t=Voltage.time;
plot(t,v);
xlabel('t(ms)');
ylabel('V(mV)');


