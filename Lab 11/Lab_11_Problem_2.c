//Problem 2

#include <stdio.h>
#include <math.h>

void main(void)


{
    float real, S, average;
    int num, ii;
    printf("Please enter how many numbers you want?\n");
    scanf("%d", &num);
    while(num<1) {
        printf("Sorry the input is invalid. Please enter a value greater or equal to 1.\n");
        scanf("%d", &num);
    }

    ii = 1;
    S = 0;

    while(ii<=num) {
        printf("Please enter a real number.\n");
        scanf("%f", &real);
        S = S + real;
        ii++;
    }
    average = S/num;
    printf("The sum of the %d numbers = %.2f\n", num, S);
    printf("The average of the inputted numbers is %.2f.\n", average);

}
