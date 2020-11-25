%Problem 1
function result = lumpsum(borrowedAmount, annualInterest, numberYears)
result = borrowedAmount*(1 + annualInterest)^numberYears;
if annualInterest < 0
    disp('Invalid input. Annual interest must be a positive integer');
    if numberYears < 0
     disp('Sorry. Please enter a positive integer');
    else
        result = borrowedAmount*(1 + annualInterest)^numberYears;
        
    end

end
annualInterestPercent = annualInterest*100;
fprintf('For a loan amount of %.2f USD at %.2f percent interest rate,\n the total amount owed after %.i years is %.2f USD.\n', borrowedAmount, annualInterestPercent, numberYears, result);

vectorYears = 1:numberYears;
plotResult = borrowedAmount*(1 + annualInterest).^vectorYears;

figure,
plot(vectorYears, plotResult, 'c');
xlim(1, numberYears);
hold on
xlabel('Year(s)');
ylabel('Amount (in USD)');
title('Amount of Compounded Loan throughout the Years');
set(gca,'fontsize',15);
set(findall(gcf,'type','line'),'linewidth',3);
end
    











