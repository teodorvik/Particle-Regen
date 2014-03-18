%% Skapar massa randomkoordinater
clear all;
SIZE = 10;
POS_DISTANCE = 0.07;
TIME_STEP = 0.01;
gravity = [0 -9.82];
radius = 0.03;

[x y] = meshgrid(0:POS_DISTANCE:(SIZE-1)*POS_DISTANCE, 0:POS_DISTANCE:(SIZE-1)*POS_DISTANCE);
%x = randi(10, [10, 10]);
%y = randi(10, [10, 10]);
untouchedParticles = [x(:), y(:)];

% vary_const = 0.1;
% for i = 1:length(particlePos(:,1))
%     particlePos(i,:) = [particlePos(i,1) + vary_const*POS_DISTANCE*(rand(1)-0.5) particlePos(i,2) + vary_const*POS_DISTANCE*(rand(1)-0.5)];
% end



%particleAcceleration = zeros(length(particlePos), 2);

iterations = 500;

%particlesOnTheMove = untouchedParticles(1:10, :);
ind = [1:10];

untouchedParticles(ind,:) = [];
particlesOnTheMoveVelocity = zeros(length(untouchedParticles), 2);
ballPos = [0,0];
ballVelocity = [0.4, 0.4];
% A = 1:10 ; % 1-D array
% ind = [1 4 7] ; % indices to be removed
% A(ind) = [] ; % remove

% Main loop
for i = 1:300
    %particleAcceleration;
    %particleVelocity = particleVelocity + TIME_STEP*particleAcceleration; 
    lengthUntouched = length(untouchedParticles);
    for i = 1:length(untouchedParticles)
        if ( isTouched(untouchedParticles(i,:), ballPos, radius) )
            if lengthUntouched == length(untouchedParticles);
                particlesOnTheMove = untouchedParticles(i,:);
                remove = [i];
            else
                particlesOnTheMove = [particlesOnTheMove; untouchedParticles(i,:)];
                remove = [remove, i];
            end
        end
    end
    
    if lengthUntouched ~= length(untouchedParticles);
            untouchedParticles(remove,:) = [];
            particlesOnTheMoveVelocity = particlesOnTheMoveVelocity(1:length(particlesOnTheMove), :);
            %particleAcceleration = zeros(length(particlesOnTheMove), 2);
    end
    
    particleAcceleration = particleAcceleration  + ones(length(particlesOnTheMoveVelocity), 1)*gravity;
    particlesOnTheMoveVelocity = particlesOnTheMoveVelocity + ;

    plot(untouchedParticles, 'x');
    hold on;
%    plot(particlesOnTheMove, 'o');
    hold off;
    pause(0.001)
end