function [answer] = isTouched(A)

    if ( A(1) > 0.8) 
        answer = 1;
    else
        answer =  0;
    end
end