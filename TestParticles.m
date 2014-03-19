%% Constants
clear all;
SIZE = 10;
POS_DISTANCE = 0.07;
TIME_STEP = 0.01;
threshold = 0.02;
gravity = [0 -9.82];
radius = 0.03;
PARTICLES_ON_THE_MOVE = false;
DONT_RETURN_HOME = true;


%% Init ParticleSystem properties
[x y] = meshgrid(0:POS_DISTANCE:(SIZE-1)*POS_DISTANCE, 0:POS_DISTANCE:(SIZE-1)*POS_DISTANCE);
particlePositions = [x(:), y(:)];
for i = 1:length(particlePositions)
    ParticleSystem(i) = particle;
    ParticleSystem(i).position = particlePositions(i,:);
    ParticleSystem(i).velocity = [0, 0];
    ParticleSystem(i).homePosition = particlePositions(i,:);
    ParticleSystem(i).mass = 0.3;
end

iterations = 500;

%% Init ball properties
ball = object;
ball.position = [0,0];
ball.velocity = [0.4, 0.4];
ball.radius = 0.2;
ball.mass = 1;

%% Main loop
for i = 1:300
    if (DONT_RETURN_HOME)
        ParticleSystem = advanceParticle(ParticleSystem, TIME_STEP);
 %       isTouched();
    else
        ParticleSystem = returnHome(ParticleSystem, threshold, TIME_STEP);
    end
    
    
    % Fortsätt att uppdatera bollen
    % eller vänta på att bollen ska skickas
    
    % Krockar den ska det de få fart och flyga åt något håll
    elasticCollision(particleSystem, ball);
    drawParticleSystem();
    
end