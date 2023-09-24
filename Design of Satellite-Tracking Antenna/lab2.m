clc;
clear all;
j=600e3;
b=20e3;
k=1;
transfer_fn=tf(k,[j b k])
%rlocusplot(transfer_fn);
isstable(transfer_fn);%system will be stable for all positive values of k
state_space=ss(transfer_fn);
system_information=stepinfo(state_space); %system information at k=1

%--------------------------------------------------------------------------------------------
%to get Kmax for Mp<10%
%-----------------------
Mp=system_information.Overshoot;
Kmax=1;
while Mp<10
Kmax=Kmax+1;
transfer_fn=tf(Kmax,[j b Kmax]);
state_space=ss(transfer_fn);
system_information=stepinfo(state_space); %system information at Kmax
Mp=system_information.Overshoot;
end
Kmax_Overshoot=Kmax-1
%--------------------------------------------------------------------------------------------

%--------------------------------------------------------------------------------------------
%to get Kmax for T_rise<80s
%--------------------------
k=1;
transfer_fn=tf(k,[j b k]);
state_space=ss(transfer_fn);
system_information=stepinfo(state_space); %system information at Kmax
T_rise=system_information.RiseTime;
while T_rise>80
k=k+1;
transfer_fn=tf(k,[j b k]);
state_space=ss(transfer_fn);
system_information=stepinfo(state_space); %system information at Kmax
T_rise=system_information.RiseTime;
end
Kmin_T_rise=k-1
%--------------------------------------------------------------------------------------------

%--------------------------------------------------------------------------------------------
%plot the step-response
%-----------------------
k=200;
transfer_fn=tf(k,[j b k]);
figure;
stepplot(transfer_fn)
title('Step Response at K=200');
state_space=ss(transfer_fn);
system_information=stepinfo(state_space); %system information at K=200
T_rise_200=system_information.RiseTime
Mp_200=system_information.Overshoot
%---------------------------------
k=400;
transfer_fn=tf(k,[j b k]);
figure;
stepplot(transfer_fn)
title('Step Response at K=400');
state_space=ss(transfer_fn);
system_information=stepinfo(state_space); %system information at K=400
T_rise_400=system_information.RiseTime
Mp_400=system_information.Overshoot
%---------------------------------
k=1000;
transfer_fn=tf(k,[j b k]);
figure;
stepplot(transfer_fn)
title('Step Response at K=1000');
state_space=ss(transfer_fn);
system_information=stepinfo(state_space); %system information at K=1000
T_rise_1000=system_information.RiseTime
Mp_1000=system_information.Overshoot
%---------------------------------
k=2000;
transfer_fn=tf(k,[j b k]);
figure;
stepplot(transfer_fn)
title('Step Response at K=2000');
state_space=ss(transfer_fn);
system_information=stepinfo(state_space); %system information at K=2000
T_rise_2000=system_information.RiseTime
Mp_2000=system_information.Overshoot
%---------------------------------
%--------------------------------------------------------------------------------------------

%--------------------------------------------------------------------------------------------
%plot zeros and poles locations
%------------------------------
k=200;
transfer_fn=tf(k,[j b k]);
figure;
pzplot(transfer_fn)
title('zeros and poles at K=200');
%-------------------------------------
k=400;
transfer_fn=tf(k,[j b k]);
figure;
pzplot(transfer_fn)
title('zeros and poles at K=400');
%-------------------------------------
k=1000;
transfer_fn=tf(k,[j b k]);
figure;
pzplot(transfer_fn)
title('zeros and poles at K=1000');
%-------------------------------------
k=2000;
transfer_fn=tf(k,[j b k]);
figure;
pzplot(transfer_fn)
title('zeros and poles at K=2000');
%-------------------------------------
%--------------------------------------------------------------------------------------------

%--------------------------------------------------------------------------------------------
%steady state Error
%------------------
k=200;
transfer_fn=tf(k,[j b k]);
state_space=ss(transfer_fn);
system_information=stepinfo(state_space); %system information at k=200
ss_max=system_information.SettlingMax;
ss_min=system_information.SettlingMin;
ss_error_200=abs(1-((ss_max+ss_min)/2))
%-------------------------------------
k=400;
transfer_fn=tf(k,[j b k]);
state_space=ss(transfer_fn);
system_information=stepinfo(state_space); %system information at k=400
ss_max=system_information.SettlingMax;
ss_min=system_information.SettlingMin;
ss_error_400=abs(1-((ss_max+ss_min)/2))
%-------------------------------------
k=1000;
transfer_fn=tf(k,[j b k]);
state_space=ss(transfer_fn);
system_information=stepinfo(state_space); %system information at k=1000
ss_max=system_information.SettlingMax;
ss_min=system_information.SettlingMin;
ss_error_1000=abs(1-((ss_max+ss_min)/2))
%-------------------------------------
k=2000;
transfer_fn=tf(k,[j b k]);
state_space=ss(transfer_fn);
system_information=stepinfo(state_space); %system information at k=2000
ss_max=system_information.SettlingMax;
ss_min=system_information.SettlingMin;
ss_error_2000=abs(1-((ss_max+ss_min)/2))
%-------------------------------------


