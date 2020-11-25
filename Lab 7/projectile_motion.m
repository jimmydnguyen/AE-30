function [totalFlightTime,horizontalDistance, maxHeight, instantPosition, x, y] = projectile_motion(velocity, theta, time)
gravity = 9.81; %[m/s^2]
radTheta = deg2rad(theta);

totalFlightTime = (2*velocity*(sin(radTheta)))/gravity;
horizontalDistance = ((velocity)^2*(sin(2*radTheta)))/gravity;
maxHeight = ((velocity)^2*(sin(radTheta)^2))/(2*gravity);

x = velocity*cos(radTheta)*time;
y = velocity*sin(radTheta)*time - 0.5*gravity*(time^2);

instantPosition = [x,y];

fprintf('The total flight time (tf) is %.2f s.\n', totalFlightTime);
fprintf('The total horizontal traveled distance (or range R) is %.2f m.\n', horizontalDistance);
fprintf('The max height (H) is %.2f m.\n)', maxHeight);
fprintf('The [x, y] position of the projectile at time t= %.2f s is [%.2f m, %.2f m].\n', time, x, y);

end

