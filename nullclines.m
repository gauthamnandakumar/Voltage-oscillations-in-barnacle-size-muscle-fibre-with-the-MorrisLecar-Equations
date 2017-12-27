Cm=20;
fai=0.067;
g_Ca=100;
g_K=8;
g_L=3;
V_Ca=0;
V_K=-150;
V_L=-50;
V1=-1;
V2=15;
V3=-1;
V4=14.5;
I=[0 25 100];
V=-50:10:50;
n=0:0.2:1;
nullclinen=(0.5*(1+tanh((V-V1)/V2)));
nullclineV=zeros(4,6);
for i=1:3
for j=1:size(n,2) 
    nullclineV(i,j)=(I(i)+g_L*V_L+g_Ca*n(j)*V_Ca)/(g_L+n(j)*g_Ca); 
end
end

plot(V,nullclinen,'r','LineWidth',2);
xlabel('V(mV)');
ylabel('N');
hold on;
for i=1:3
plot(nullclineV(i,:),n,'b','LineWidth',2);
end
legend('dm=0 nullclines','dV=0 nullclines')