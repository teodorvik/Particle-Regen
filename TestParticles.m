%% Skapar massa randomkoordinater
clear all;
SIZE = 10;
POS_DISTANCE = 0.07;
TIME_STEP = 0.01;
gravity = [0 -9.82];
radius = 0.03;
PARTICLES_ON_THE_MOVE = false;
DONT_RETURN_HOME = true;

[x y] = meshgrid(0:POS_DISTANCE:(SIZE-1)*POS_DISTANCE, 0:POS_DISTANCE:(SIZE-1)*POS_DISTANCE);
particlePositions = [x(:), y(:)];

for i = 1:length(particlePositions)
    ParticleSystem(i) = particle;
    ParticleSystem(i).position = particlePositions(i,:);
    ParticleSystem(i).velocity = [0, 0];
    ParticleSystem(i).homePosition = particlePositions(i,:);
end

iterations = 500;

ballPos = [0,0];
ballVelocity = [0.4, 0.4];

particlesOnTheMove = [];
particleAcceleration = [];
particlesOnTheMoveVelocity = [];

% Main loop
for i = 1:300
    if (DONT_RETURN_HOME)
        advanceParticle();
        isTouched();
    else
        returnHome();
    end
    
    
    % Fortsätt att uppdatera bollen
    % eller vänta på att bollen ska skickas
    
    % Krockar den ska det de få fart och flyga åt något håll
    
    drawParticleSystem();
    
end