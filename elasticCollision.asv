function[] = elasticCollision(particleSystem, ball)


    phi;
    
    % These variables will be the same for every collision
	theta2 = atan2(ball.velocity);
    v2 = ball.velocity;
	m1 = particleSystem(1).mass;
    m2 = ball.mass;
    
	for i = 1:length(particleSystem)
        if ball.position == particleSystem(i).position
            
            theta1 = atan2(particleSystem(i).velocity);            
            v1 = particleSystem(i).velocity;            

            vx = ((v1*cos(theta1 - phi)*(m1 - m2) + 2*m2*v2*cos(theta2 - phi))/(m1 + m2))*cos(phi) + v1*sin(theta1 - phi)*cos(phi+pi/2);
            vx = ((v1*cos(theta1 - phi)*(m1 - m2) + 2*m2*v2*cos(theta2 - phi))/(m1 + m2))*sin(phi) + v1*sin(theta1 - phi)*sin(phi+pi/2);

            newVelocity = [vx, vy];

            particleSystem(i).velocity = newVelocity;
        end
	end
end