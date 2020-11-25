function [] = projectile_trajectory(velocity, theta, totalFlightTime, time, x, y)
gravity = 9.81;
radTheta = deg2rad(theta);

% vx = velocity*cos(radTheta);
% vy = velocity*sin(radTheta);
totalFlightTimeToZero = (2*velocity*sin(radTheta))/gravity;

tx = 0:.2:totalFlightTimeToZero;
ty = 0:.2:totalFlightTimeToZero;

positionX = velocity*cos(radTheta)*tx;
positionY = velocity*(sin(radTheta)*ty) - (0.5*gravity*(ty.^2));

figure,
plot(positionX, positionY, '--')
hold on
plot(x, y,'ro')
legend('Trajectory of the Projectile', 'The Projectile')
xlabel('x position [m]');
ylabel('y position [m]');
title('Trajectory of the Projectile');
set(gca,'fontsize',15);
set(findall(gcf,'type','line'),'linewidth',3);





end

