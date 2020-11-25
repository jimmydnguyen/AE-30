%Problem 1
% number = input('Please enter a value for n: ');
% 
% while number < 0
%     number = input('Sorry. Please enter a value greater than 0: ');
% end 
%         
% summation = sum(1:2:number);
% fprintf('The summation is %2.f\n', summation);

%Problem 2

% number = input('Please enter a value for n: ');
% 
% while number < 0
%     number = input('Sorry. Please enter a value greater than 0: ');
% end 
% 
% summation = 0;
% counter = 1;
%     
% if number > 0
%     fprintf('S = ');
%     while counter <= number
%         summation = summation + counter^number;
%         fprintf('%i^%i', counter, number);
%         if counter < number
%             fprintf(' + ');
%         end
%         counter = counter + 1;
%     end
% end
% 
% fprintf(' = %i\n', summation);

%Problem 3
% counter = 1;
% factorial = 1;
% 
% inputNumber = input('Please enter a number: ');
% if inputNumber == 0
%     factorial = 1;
% 
% end
% 
% while counter < inputNumber
%     factorial = factorial*(counter + 1);
%     disp(counter);
%     counter = counter + 1;
%     
%     
% end
% disp(factorial);

% %Problem 4
% matrix = input('Please input a 3x3 matrix: ');
% disp('Your inputted matrix is:');
% disp(matrix);
% 
% %Part A
% [row, col] = size(matrix);
% 
% max = intmin('int64');
% for i = 1:row
%     rowMax = intmin('int64');
%     
%     for j = 1:col
%         if matrix(i, j) > rowMax
%             rowMax = matrix(i, j);
%         end
%     end
%     fprintf('The max element of row %i is %.4f.\n', i, rowMax);
%     
%     if rowMax > max
%         max = rowMax;
%     end
% end
% 
% %Part B
% 
% [row, col] = size(matrix);
% 
% min = intmax('int64');
% for j = 1:col
%     rowMin = intmax('int64');
%     
%     for i = 1:row
%         if matrix(i, j) < rowMin
%             rowMin = matrix(i, j);
%         end
%     end
%     fprintf('The min element of col %i is %.4f.\n', j, rowMin);
%     
%     if rowMin < min
%         min = rowMin;
%     end
% end
% 
% %Part C
% fprintf('The max element in the entire matrix is %.4f.\n', max);
% fprintf('The min element in the entire matrix is %.4f.\n', min);




