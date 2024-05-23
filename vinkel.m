function theta = vinkel(t)

   if t >= 0 && t <= 8 
        theta  = 3*pi/4;
        
    elseif t > 8 && t < 25
       theta= 3*pi/2;

   elseif t > 25 && t < 30
        theta =3*pi/2;
        
   elseif t > 30 && t < 34
       theta = 7*pi/4;

   elseif t > 34 && t < 36
       theta = 3*pi/2;
   
   elseif t > 36 && t < 40
       theta  =5*pi/4;
       %7*pi/4;
   
   elseif t > 40 && t < 43
       theta= 3*pi/2;
   
   elseif t > 43 && t < 46 
       theta = 0; 
   
   else 
       theta= 7*pi/4;

    end
end

%     if t>=0 && t <=2
%         theta = -pi/4;
%     elseif t>2 && t<=5
%         theta = -3*pi/2;
%     elseif t>5 && t<=12
%         theta = 3*pi/4;
%     elseif t>12 && t<=22
%         theta = 3*pi/2;
%     elseif t>22 && t<=40
%         theta = pi;
%     end
% end 