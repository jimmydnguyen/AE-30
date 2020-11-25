%Problem 1
borrowedAmount = input('Please enter the borrowed amount (P) (in USD): ');

while borrowedAmount < 0
   disp('Borrowed amount must be greater than 0');
   borrowedAmount = input('Please enter the borrowed amount (P) (in USD): ');
end
    
annualInterest = input('Please enter the annual interest rate (i): ');
while annualInterest < 0
   disp('Annual interest rate must be greater than 0');
   annualInterest = input('Please enter the annual interest rate (i): ');
end

numberYears = input('Please enter the number of years (n): ');
while numberYears < 0
    disp('Number of years must be greater than 0');
end
  
lumpsum(borrowedAmount, annualInterest, numberYears);


%Problem 2
matrix = input('Please input a matrix: ');
disp('The inputted matrix is:');
disp(matrix);

disp('The sum of each column is:');
disp(sumprint(matrix, 1));

disp('The sum of each row is:');
disp(sumprint(matrix, 2));

%Problem 3

[velocity, theta, time] = projectile_inputs();

[totalFlightTime, horizontalDistance, maxHeight, instantPosition, x, y] = projectile_motion(velocity, theta, time);

projectile_trajectory(velocity, theta, totalFlightTime, time, x, y);

