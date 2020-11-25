%Problem 1
number1 = input('Please enter the first number:');
number2 = input('Please enter the second number:');
if number1 > number2
   disp('number 1 is greater than number 2');
elseif number1 == number2
   disp('number 1 is the same as number 2');
else 
   disp('number 1 is less than number 2');
end

%Problem 2
length =input('Please enter a valid value for the length of a rectangle:');
if length < 0
   disp('Invalid input');
else    
   width = input('Please enter a valid value for the width of a rectangle:');
   if width < 0
        disp('Invalid input');
    else    
        area = length * width;
        perimeter = 2*(length + width);
        fprintf('Area of the rectangle is %.2f\n' , area);
        fprintf('Perimeter of the rectangle is %.2f\n', perimeter);
    end
end

%Problem 3
area1 = input('Please input a value for the first Area:');
if area1 < 0
    disp('Invalid input');
else
    area2 = input('Please input a value for the second Area:');
    if area2 < 0
        disp('Invalid input');
    else
        velocity1 = input('Please input a value for the Velocity at this point:');
        velocity2 = (area1 / area2) * velocity1;
        if velocity2 > velocity1 
            disp('Second velocity will increase');
        elseif velocity2 == velocity1
            disp('Second velocity will remain the same');
        else
            disp('Second velocity will decrease');
        end
    end
end

%Problem 4
phScale = input('Please input the pH solution');
if phScale < 0
    disp('Invalid pH input');
elseif phScale < 7
    disp('acidic');
elseif phScale == 7
    disp('neutral');
elseif phScale > 7 && phScale < 15
    disp('basic');
else 
    disp('invalid pH input');
end 

%Problem 5
speedOfSound = 340; %[m/s]
velocity = input('Please input the aircraft speed:');
mach = velocity/speedOfSound
if mach < 1 && mach < 0
    disp('The flow is subsonic');
elseif mach == 1
    disp('The flow is sonic');
elseif mach > 1
    disp('The flow is supersonic');
else
    disp('Invalid velocity input');
end

%Problem 6
celsius = input('Please enter the temperature in degrees Celsius:');
if celsius < -273.15
    disp('Please enter a value in degrees higher than -273.15');
else
    degrees = input('Do you want to convert from Celsius to degrees Fahrenheit (F) or Kelvin (K):','s');
    if degrees == 'F' || degrees == 'f'
        fahrenheit = 9/5*celsius + 32;
        fprintf('%.2f', celsius, fahrenheit);
    elseif degrees == 'K' || degrees == 'k'
        kelvin = celsius + 273.15
        fprintf('%.2f', celsius, kelvin);
    else
        disp('Wrong user input');
    end
end
        
%Problem 7
totalScore = input('Please input the total score:');
if totalScore < 0
    disp('Invalid user input');
elseif totalScore >= 950
    disp('A+');
elseif totalScore >= 900
    disp('A');
elseif totalScore >= 850
    disp('A-');
elseif totalScore >= 800
    disp('B+');
elseif totalScore >= 750
    disp('B')
elseif totalScore >= 700
    disp('B-')
elseif totalScore >= 670
    disp('C+')
elseif totalScore >= 650
    disp('C')
elseif totalScore >= 630
    disp('C-')
elseif totalScore >= 600
    disp('D')
else totalScore < 600
    disp('F');

end 

%Problem 8
disp('Please choose among the follow options.');
disp('Options and Corresponding Mathemtical Functions:');
disp('1: Linear Function (y= ax+b)');
disp('2: Quadratic Function (y=ax^2+bx+c)');
disp('3: Cubic Function (y= ax^3+bx^2+cx+d)');

choice = input('Please enter your choice:');
x = -10:2:10;

if choice == 1
    a = input('Please enter a:');
    b = input('Please enter b:');
    
    linearFunction = a*x + b;
    
    fprintf('You have chosen to plot y= %.2fx+%.2f', a, b);
    plot(linearFunction, x);
    xlabel('x');
    ylabel('y');
    title('Linear Function');
elseif choice == 2
    a = input('Please enter a:');
    b = input('Please enter b:');
    c = input('Please enter c:');
    
    quadraticFunction = a*x.^2 + b*x + c;
    
    fprintf('You have chosen to plot y= %.2fx^2+%.2fx+%.2f', a, b, c);
    plot(quadraticFunction, x);
    xlabel('x');
    ylabel('y');
    title('Quadratic Function');
elseif choice == 3
    a = input('Please enter a:');
    b = input('Please enter b:');
    c = input('Please enter c:');
    d = input('Please enter d:');
    
    cubicFunction = a*x.^3 + b*x.^2 + c*x + d;
    
    fprintf('You have chosen to plot y= %.2fx^3+%.2fx^2+%.2fx+%.2f', a, b, c, d);
    plot(cubicFunction, x);
    xlabel('x');
    ylabel('y');
    title('Cubic Function');
else 
    disp('Invalid choice');
end

    