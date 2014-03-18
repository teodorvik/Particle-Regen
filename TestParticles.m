%% Skapar massa randomkoordinater
clear all;
SIZE = 10;
POS_DISTANCE = 0.07;
TIME_STEP = 0.01;
gravity = [0 -9.82];


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

particlesOnTheMove = untouchedParticles(1:10, :);
ind = [1:10];

untouchedParticles(ind,:) = [];
particlesOnTheMoveVelocity = zeros(length(untouchedParticles), 2);
% A = 1:10 ; % 1-D array
% ind = [1 4 7] ; % indices to be removed
% A(ind) = [] ; % remove

% Main loop
while true
    %particleAcceleration;
    %particleVelocity = particleVelocity + TIME_STEP*particleAcceleration; 
    lengthUntouched = length(untouchedParticles);
    for i = 1:length(untouchedParticles)
        if ( isTouched(untouchedParticles(i,:)) )
            particlesOnTheMove = [particlesOnTheMove; untouchedParticles(i,:)];
            if lengthUntouched == length(untouchedParticles);
                remove = [i];
            else
                remove = [remove, i];
            end
        end
    end
    
    if lengthUntouched ~= length(untouchedParticles);
            untouchedParticles(remove,:) = [];
            particlesOnTheMoveVelocity = particlesOnTheMoveVelocity(1:length(particlesOnTheMove), :);
    end
    
    
    particlesOnTheMoveVelocity = particlesOnTheMoveVelocity + ones(length(particlesOnTheMove), 1)*gravity;

    plot(untouchedParticles, 'x');
    hold on;
    plot(particlesOnTheMove, 'o');
    hold off;
    pause(0.001)
end