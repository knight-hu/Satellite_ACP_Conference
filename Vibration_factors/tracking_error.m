clear all
theta1=20*(180/pi)*10^(-6);   %20urad
theta2=40*(180/pi)*10^(-6);    %40urad
theta3=60*(180/pi)*10^(-6);   %60urad
theta4=80*(180/pi)*10^(-6);   %80urad
theta5=100*(180/pi)*10^(-6);   %100urad
theta6=120*(180/pi)*10^(-6);   %120urad
psi=0:1*(180/pi)*10^(-6):100*(180/pi)*10^(-6);   %0:1urad:100urad
phi=0:1*(180/pi)*10^(-6):100*(180/pi)*10^(-6);
G1=exp(-(8*(psi.^2))/(theta1.^2)); % 信号光束散角为20urad的发射端的跟瞄误差系数
G2=exp(-(8*(psi.^2))/(theta2.^2)); % 信号光束散角为40urad发射端的跟瞄误差系数
G3=exp(-(8*(psi.^2))/(theta3.^2)); % 信号光束散角为60urad发射端的跟瞄误差系数
G4=exp(-(8*(psi.^2))/(theta4.^2)); % 信号光束散角为80urad的发射端的跟瞄误差系数
G5=exp(-(8*(psi.^2))/(theta5.^2)); % 信号光束散角为100urad发射端的跟瞄误差系数
G6=exp(-(8*(psi.^2))/(theta6.^2)); % 信号光束散角为120urad发射端的跟瞄误差系数
Gr=cos(phi);% 接收端的跟瞄误差系数
grid on
figure(1)
h=plot(psi,G1,psi,G2,psi,G3,psi,G4,psi,G5,psi,G6,phi,Gr);
legend("20urad","40urad","60urad","80urad","100urad","120urad")
xlabel("tracking error angle/rad");
ylabel("tracking error coefficient");
axis([0 100*(180/pi)*10^(-6) 0 1.1]);
grid on