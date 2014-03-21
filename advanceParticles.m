function [particleSystem] = advanceParticles(particleSystem, TIME_STEP, gravity)
    for i = 1:length(particleSystem)
        if isequal(particleSystem(i).velocity, [0,0])
            
        else
            % Not sure about the line under
            particleAcceleration =  gravity;
            particleSystem(i).position = particleSystem(i).velocity*TIME_STEP + TIME_STEP*particleAcceleration;
        end
    end
end