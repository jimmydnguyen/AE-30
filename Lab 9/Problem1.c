//Problem 1
#include<stdio.h>

void main(void)
{
    float R1, R2, R_s, R_p;
    printf("Please enter a value for R1:\n");
    scanf("%f", &R1);
    printf("Please enter a value for R2:\n");
    scanf("%f", &R2);

    R_s = R1 + R2;
    R_p = 1/(1/R1 + 1/R2);

    printf("The equivalent resistance when R1 and R2 are in series is %.2f. \n", R_s);
    printf("The equivalent resistance when R1 and R2 are in parallel is %.2f. \n", R_p);


}



