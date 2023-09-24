clc;

KCS = 0.5;
KSS = 0.0433;
Jtot = 7.226;
Ra = 1;
Kf = 0.1;
Kb = 2;
r_itot = 0.0615;
RocwAvor_itot =0.6154;
ntotKt = 1.8;

open_system('lab1_model');
sim('lab1_model');
tf(linsys1)
