function [] = drawParticleSystem(particleSystem)
    for i = 1:length(particleSystem)
        plot(particleSystem(i).position(1), particleSystem(i).position(2), 'o');
    end
end