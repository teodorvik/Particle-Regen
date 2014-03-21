function [] = drawBall(ball)
    %plot(ball.position(1), ball.position(2), 'x');
    for i = 0:30
        x(i+1) = ball.position(1) + ball.radius*cos((i/30)*2*pi);
        y(i+1) = ball.position(2) + ball.radius*sin((i/30)*2*pi);
       
       
    end
     plot(x,y);
    %pdecirc(ball.position(1),ball.position(2),ball.radius)
end