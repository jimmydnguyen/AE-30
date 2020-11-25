//Problem 2

#include <stdio.h>


void main (void)
{
    float x, y;

    printf("Please enter the value for x:\n");
    scanf("%f", &x);

    if (x<-5) {
        y = x*x - 2*x + 3;
    }

    else {
        if (x<=5) {
            y = 5*x -3;

    }
    else {
        y = 5;
    }
    }

    printf("When x = %.2f, y = %.2f.\n", x, y);



}
