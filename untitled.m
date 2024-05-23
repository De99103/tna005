clc
clear
clf 

load bana-293.mat


xHast = v0*cosd(a0); %arbetar med vinklar i grader istället för radianer. 
yHast = v0*sind(a0);
tspan = [0 45]; 


% v0 = Begynnelsefarten = 60. 
% a0 =  begynnelseriktningen 

plotTrack(portx,porty,ver,v0,a0)
hold on 
figure(1); 

xyvb = [75 xHast 0 yHast];  % x, x', y, y'

[t,z]= ode45(@kast,tspan, xyvb);
plot(z(:,1),z(:,3))


xlim([-84 400])
ylim([-50 400])


%%
clf 
angle_time =[0 0 5 5 8 8 11 12  12 18 18 23 23 25 27 27 34 34 40 40];
angle_values2= [ -pi/2 -pi/2 -pi/2 pi/2 pi/2 pi/2 pi/2 3*pi/2 3*pi/2  -3*pi/4 -3*pi/4  pi pi/2 pi/2 -3*pi/4 pi/2 -3*pi/4 -3*pi/4  -pi/2  -pi/2];
angle_values = rad2deg(angle_values2); 
axis equal; 
plot(angle_time, angle_values)
ylim([0 360])
xlim([0 42])

xlabel('Tid (s)')
ylabel('Vinkel (grader)')
title('Vinkel över tid')
yticks([-90 0 45 90 135 180 225 270 315 450])
ytickformat("degrees"); 

xlim([-10.8 52.0])
ylim([-172 308])
grid on

%%
clf 
plot(z(:,1),z(:,2));
hold on;
plot(0,50,'or')
xlabel('Avstånd från start (m)')
ylabel('Hastighet (m/s)')
title(['Raketens hastighet genom banan'])
xlim([-50,850]);
clf
hastighet = sqrt(z(:,2).^2+z(:,4).^2);
plot(z(:,1),hastighet);
%plot(t,hastighet);

xlabel('Avstånd x (m)')
ylabel('Fart (m/s)')
title('Fart över avstånd')


grid on


xlim([-57 569])
ylim([4.7 58.5])



