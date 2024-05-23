function [m,dm] = massa(t)


%m = 30; % börjar . Byggnelsevilkor. 
% motorn starta vid t = 7 . 

  if t >= 0 && t <7
        m = 30;
        dm = 0;


    elseif t >= 7  && t < 107
        m = 30 - 0.2 * (t - 7);
        dm = -0.2;
    
  else
        m = 10;
        dm = 0;
    end

end



