function [answer] = isTouched(particle, ball, radius)
    
    dist = abs(particle - ball);
    if ( dist < radius) 
        answer = 1;
    else
        answer =  0;
    end
end