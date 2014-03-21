function [particleSystem] = returnHome(particleSystem, threshold, TIME_STEP)
    
    for i = 1:length(particleSystem)
        tempParticle = particleSystem(i);
        if(tempParticle.position ~= tempParticle.homePosition)
            direction = tempParticle.homePosition - tempParticle.position;
            dist = abs(direction);
            dist = dist(1);
            
            if dist < threshold
                particleSystem(i).position = particleSystem(i).homePosition;
                particleSystem(i).velocity = [0,0];
            else                
                direction = direction./norm(direction);
                particleAcceleration = direction*(1/dist);

                particleSystem(i).velocity = particleSystem(i).velocity + TIME_STEP*particleAcceleration;
                particleSystem(i).position = particleSystem(i).position + TIME_STEP*particleSystem(i).velocity;
            end
        end
    end    
end