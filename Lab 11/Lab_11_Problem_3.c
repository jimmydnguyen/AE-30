//Problem 3

#include <stdio.h>
#include <math.h>

void main (void)
{
    int n, k;
    float S;

    printf("Please enter a number greater than or equal to 1.\n");
    scanf("%d", &n);

    while (n<=0) {
        printf("Sorry invalid input. Please enter a value greater than or equal to 1.\n");
        scanf("%d", &n);

    }

    S = 0;
    for(k=1;k<=n;k++) {
        S = S + (pow(-1, k+1)/(2*k-1));
    }

    printf("The approximate pie value would be %.5f\n", 4*S);

// N has to be 95000 for the Gregory-Leibniz series to output an accepted value of 3.14159.
}

