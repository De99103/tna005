function dz = kast(t,z)
%KAST Summary of this function goes here
%   Detailed explanation goes here

c = 0.3 ; %kg/m
g = 9.82 ;%m/s^2
% km = 2000; % m/s konstant fart = ||u(t)|| 

% bransel = 10; 


[m,dm] = massa(t);
[uX,uY]= utFunk(t); 

t; 
uX;
uY; 

dz = [z(2)
      (-c/m) * sqrt( z(2)^2 + z(4)^2 ) * z(2) + (dm/m) * uX
      z(4)
      (-c/m) * sqrt( z(2)^2 + z(4)^2 ) * z(4) + (dm/m) * uY - g];

end

