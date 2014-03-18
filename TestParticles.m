%% Skapar massa randomkoordinater
clear all;
SIZE = 10;
POS_DISTANCE = 0.07;
TIME_STEP = 0.01;
gravity = [0 -9.82];
radius = 0.03;

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
%     for i = 1:length(untouchedParticles)
%         if ( isTouched(untouchedParticles(i,:), ballPos, radius) )
%             if lengthUntouched == length(untouchedParticles);
%                 particlesOnTheMove = untouchedParticles(i,:);
%                 remove = [i];
%             else
%                 particlesOnTheMove = [particlesOnTheMove; untouchedParticles(i,:)];
%                 remove = [remove, i];
%             end
%         end
%     end
%     
%     if lengthUntouched ~= length(ParticleSystem);
%             untouchedParticles(remove,:) = [];
%             particlesOnTheMoveVelocity = particlesOnTheMoveVelocity(1:length(particlesOnTheMove), :);
%     end
%     
%     particleAcceleration = particleAcceleration  + ones(length(particlesOnTheMoveVelocity), 1)*gravity;
%     particlesOnTheMoveVelocity = particlesOnTheMoveVelocity + TIME_STEP*particleAcceleration;
% 
%     plot(untouchedParticles, 'x');
%     hold on;
% %    plot(particlesOnTheMove, 'o');
%     hold off;
%     pause(0.001)
end