function [answer] = isTouched(particle, ball, radius)
    
    dist = abs(particle - ball);
    if ( dist < radius) 
        % R�kna ut riktningen vart de ska g� med hj�lp 
        % av normalen. S�tt sedan velocity med r�tt kraft p� partikeln
        answer = 1;
    else
        answer =  0;
    end
end