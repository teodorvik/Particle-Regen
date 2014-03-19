function [particleSystem] = advanceParticles(particleSystem, TIME_STEP, gravity)
    for i = 1:length(particleSystem)
        if particleSytem(i).velocity ~= [0,0]
            % Not sure about the line under
            particleAcceleration = particleSystem(i).velocity + gravity;
            particleSystem(i).velociy = particleSystem(i).velociy + TIME_STEP*particleAcceleration;
        end
    end
end