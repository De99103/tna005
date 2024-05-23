function [uX,uY] = utFunk(t)

%funktionen beror på tiden t. 
km = 2000;  %m/s konstant fart = ||u(t)|| 
theta = vinkel(t);

uX = km * cos(theta);
uY = km * sin(theta);


end

