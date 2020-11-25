//Problem 2
#include<stdio.h>


void main(void)
{
    float num1, num2, sum, difference, product, quotient;
    printf("Please enter a value for number 1:\n");
    scanf("%f", &num1);
    printf("Please enter a value for number 2:\n");
    scanf("%f", &num2);

    sum = num1 + num2;
    difference = num1 - num2;
    product = num1*num2;
    quotient = num1/num2;

    printf("The sum of num1 and num2 is %.2f. \n", sum);
    printf("The difference of num1 and num2 is %.2f. \n", difference);
    printf("The product of num1 and num2 is %.2f. \n", product);
    printf("The quotient of num1 and num2 is %.2f. \n", quotient);

}
