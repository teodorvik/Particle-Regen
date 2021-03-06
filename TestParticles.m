%% Constants
clear all;
SIZE = 10;
POS_DISTANCE = 0.07;
TIME_STEP = 0.01;
threshold = 0.02;
gravity = [0 -9.82];
ballRadius = 0.06;
particleMass = 0.7;
particleRadius = 0.01;
ballMass = 1;
DONT_RETURN_HOME = true;


%% Init ParticleSystem properties
[x y] = meshgrid(0:POS_DISTANCE:(SIZE-1)*POS_DISTANCE, 0:POS_DISTANCE:(SIZE-1)*POS_DISTANCE);
particlePositions = [x(:), y(:)];
for i = 1:length(particlePositions)
    ParticleSystem(i) = particle;
    ParticleSystem(i).position = particlePositions(i,:);
    ParticleSystem(i).velocity = [0, 0];
    ParticleSystem(i).homePosition = particlePositions(i,:);
    ParticleSystem(i).radius = particleRadius;
    ParticleSystem(i).mass = particleMass;
end

%% Init ball properties
ball = ballClass;
ball.position = [0,0];
ball.velocity = [1, 0.41];
ball.radius = ballRadius;
ball.mass = ballMass;

%% Main loop
iterations = 200;
for i = 1:iterations
%     if (DONT_RETURN_HOME)
%         ParticleSystem = advanceParticles(ParticleSystem, TIME_STEP, gravity);
%     else
%         ParticleSystem = returnHome(ParticleSystem, threshold, TIME_STEP);
%     end 
%     
    % Forts�tt att uppdatera bollen
    % eller v�nta p� att bollen ska skickas
    ball.position = ball.position + TIME_STEP*ball.velocity;
    
    % Krockar den ska det de f� fart och flyga �t n�got h�ll
    ParticleSystem = elasticCollision(ParticleSystem, ball);

    % Regen after half the time
    if i > iterations/2
        %DONT_RETURN_HOME = false;
    else
        
    end
    
    drawBall(ball);
    hold on;
    
   % drawParticleSystem(ParticleSystem);  
    for j = 1:length(ParticleSystem)
        plot(ParticleSystem(j).position(1), ParticleSystem(j).position(2), 'o');
    end
    hold off;
   
    pause(0.003);
end