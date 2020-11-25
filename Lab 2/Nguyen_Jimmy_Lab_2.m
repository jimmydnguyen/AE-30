%Problem 1 a-c
thisYear = 2020;
lastYear = thisyear - 1;
nextYear = thisyear + 1;
disp('Problem 1a');
disp(thisYear);
disp('Problem 1b');
disp(lastYear);
disp('Problem 1c');
disp(nextYear);


%Problem 2a
rangeMin = intmin('uint16');
rangeMax = intmax('uint16');

problem = 'Problem 2a:';
answer = 'The range of values for uint 16 is %i to %i\n';

disp(problem);
fprintf(answer, rangeMin, rangeMax);

%Problem 2b
rangeMin = intmin('uint32');
rangeMax = intmax('uint32');

problem = 'Problem 2b:';
answer = 'The range of values for uint 32 is %i to %i\n';

disp(problem);
fprintf(answer, rangeMin, rangeMax);

%Problem 2c
rangeMin = intmin('uint64');
rangeMax = intmax('uint64');

problem = 'Problem 2c:';
answer = 'The range of values for uint 64 is %i to %i\n';

disp(problem);
fprintf(answer, rangeMin, rangeMax);


%Problem 3a
Ftemp = 65; %Degrees Fahrenheit (F)
Ctemp = (5/9)*(Ftemp-32); %Degrees Celsius (C)
answer = '%f degrees Celsius\n\n';
disp('Problem 3a');
fprintf(answer,Ctemp);

%Problem 3b
Ftemp = Ctemp*(9/5)+32;
answer = '%i degrees Fahrenheit';
disp('Problem 3b');

fprintf(answer, Ftemp);


%Problem 4a
Resist_1 = 3; %Resistor 1 (in Ohms)
Resist_2 = 6; %Resistor 2 (in Ohms)
R1='Resist_1=%i\n';
R2='Resist_2=%i\n';
disp('Problem 4a');
fprintf(R1,Resist_1);
fprintf(R2,Resist_2);


%Problem 4b
seriesResistor = Resist_1 + Resist_2; 
parallelResistor = 1/Resist_1 + 1/Resist_2;
answer = '%d ohms\n';
disp('Problem 4b');
fprintf(answer,seriesResistor);

answer = '%f ohms\n';
fprintf(answer,parallelResistor);


%Problem 5a
rand*20

%Problem 5b
rand*(50-20)+20

%Problem 5c    
randi(10)

%Problem 5d
randi([0,10])

%Problem 5e
randi([50,100])


%Problem 6a
if double('b') >= ('c') - 1
    disp('true');
else
    disp('false');
end

%The result is a 1 which means the statement is True. It's true because 98
%is equal to 99 - 1.

%Problem 6b
if 3 == 2 + 1
    disp('true');
else
    disp('false');
end

%The statement is true because 2 + 1 does equal to 3. The value of the left
%side is being compared to the value of the right side. 

%Problem 6c
if (3 == 2) + 1
    disp('true');
else
    disp('false');
end

%3 == 2 returns 0 because it's a false expression.
%However, 0 + 1 equals 1 which makes the statement return true because 1
% is associated to true.

%Problem 6d
if xor(5<6, 8>4)
    disp('true');
else 
    disp('false');
end

%The statement is false because function xor returns logical true if one
%and only one of the arguments is true. In this case, both arguments are
%true therefore, the function xor returns false.

%Problem 6e
if double('c'=='d'-1|| 2>4')
    disp('true')
else
    disp('false');
end

%The statement is true because the or operator returns true if one of the
%arguments is true. The first expression c==d-1 is true.



%Problem 7
if double('a') < double('A')
    disp('true');
else
    disp('false');
end

disp(double('a'));
disp(double('A'));

%Big 'A' comes first before little 'a' because it has lower numerical value
%for MatLab. The same applies for all capital letters.



%Problem 8
c = 3*exp(8);%Speed of light in m/s


%Problem 8a
v1 = 25; % velocity in mph
metersPerSecond1 = convertMPH(v1);
gamma1 = calculateGamma(metersPerSecond1,c);
disp(gamma1);

%There is no time difference because the Lorentz factor is 1. The closer
%the Lorentz factor is to 1, there's less time dilation.

%Problem 8b
v2 = 680; %velocity in m/s
gamma2 = calculateGamma(v2, c);
display(gamma2);

%There is not much of a time difference because the Lorentz factor is
%barely greater than 1, which means there isn't significant time dilation.


%Problem 8c
v3 = 0.9 * c;
gamma3 = calculateGamma(v3, c);
display(gamma3);

%There's a bigger time difference because the Lorentz factor is now 2.2942.
%The higher it goes from 1 to infinity, then the higher the time dilation. 

%Problem 8d
%The faster the speed, the greater the time dilation will be. When it's
%equal to 1 or close to 1, the time dilation is nonexistent.


%Functions
function gamma = calculateGamma(v,c)
    gamma = 1/(sqrt(1-((v^2)/(c^2))));
end

function metersPerSecond = convertMPH(v)
    metersPerSecond = (1609/3600)*v';
end

