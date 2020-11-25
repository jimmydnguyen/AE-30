% %Lab 4
 
%Problem 1
R = input('Please input the outer raidus (R):');
r = input('Please input the inner radius (r):');
V = 4*(pi/3) * (R^3 - r^3);
fprintf('The volume(V) of the hollow sphere is %.2f' ,V) 
fprintf('[unit of volume]\n\n')
 
%Problem 2
cubicMeterPerSecond = input('Please enter the flow rate in [m^3/s]:');
cubicMeterToCubicFeet = 1/0.028; %conversion 
cubicFeetPerSecond = cubicMeterPerSecond * cubicMeterToCubicFeet; %ft^3/s to m^3/s
fprintf('A flow rate of %.2f [m^3/s] is equivalent to %.2f ft^3/s\n\n',cubicMeterPerSecond, cubicFeetPerSecond)
 
 
%Problem 3
b = input('Please enter the first side of the triangle(b):');
c = input('Please enter the first side of the triangle(c):');
alpha = input('Please enter the angle (in degrees) between them:');
a = sqrt(b^2 + c^2 - (2*b*c*cos(deg2rad(alpha))));
fprintf('The third side of the triangle is %.3f\n\n',a);
 
%Problem 4
pointOne = input('Please input the coordinates of point 1 as [x1, y1, z1]:');
pointTwo = input('Please input the coordinates of point 2 as [x2, y2, z2]:');
distance = sqrt((pointTwo(1)-pointOne(1))^2+(pointTwo(2)-pointOne(2))^2+(pointTwo(3)-pointOne(3))^2);
fprintf('The distance between point 1 [%.2f, %.2f, %.2f] and point 2 [%.2f, %.2f, %.2f] is %.2f',...
pointOne(1), pointOne(2), pointOne(3), pointTwo(1), pointTwo(2), pointTwo(3), distance);
 
%Problem 5
vector = input('Please input a 3D vector as [x, y, z]:');
x = vector(1);
y = vector(2);
z = vector(3);
unitVector = [x, y, z]/sqrt(x^2+y^2+z^2);
fprintf('The unit vector is [%.2f, %.2f, %.2f]\n', unitVector);

Xa = unitVector(1);
Ya = unitVector(2);
Za = unitVector(3);
magnitude = sqrt(Xa^2+Ya^2+Za^2);
fprintf('The magnitude of the unit vector is %.2f, %.2f, %.2f',magnitude);

%Problem 6
totalDistance = input('Please input the total distance traveled in miles:');
totalFuel = input('Please input the total fuel consumed in gallons:');
fuelEconomy = fueleconomycalculator(totalDistance, totalFuel);
fprintf('The fuel economy of your automobile is %.2f mpg',fuelEconomy);



%Problem 7
x = [-100:1:100]';
y1 = x(:).^2;
y2 = 2.*x-1;
mat = [x, y1, y2];
save myplot.dat mat -ascii
data = dlmread('myplot.dat')

%Plotting the equation
figure,
plot(x, y1, 'Color',[.61 .51 .74])
hold on
plot(x, y2, 'y')
xlabel('X Values');
ylabel('Y Values');

%Title
title('myPlot Functions')
legend('X Values', 'Y Values')


