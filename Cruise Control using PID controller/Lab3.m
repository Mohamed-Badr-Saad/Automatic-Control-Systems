clc;
clear all;
m=1000;
b=50;
OpenLoop=tf([1],[m b]);
step(OpenLoop);
controlSystemDesigner(OpenLoop);
%%
m=1000;
b=50;
OpenLoop=tf([1],[m b]);
Kp=420;
Ki=60;
Kd=60;
Td=Kd/Kp
Ti=Kp/Ki
controller=pid(Kp,Ki,Kd);
ClosedLoop=feedback(series(controller,OpenLoop),1);
figure;
step(ClosedLoop)
info=stepinfo(ClosedLoop);
T_rise=info.RiseTime
T_overshoot=info.Overshoot
[y t]=step(ClosedLoop);
Error_ss=abs(1-y(end))

