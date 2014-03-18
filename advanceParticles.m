function [] = advanceParticles()
    particleAcceleration = particleAcceleration  + ones(length(particlesOnTheMoveVelocity), 1)*gravity;
	particlesOnTheMoveVelocity = particlesOnTheMoveVelocity + TIME_STEP*particleAcceleration;
end