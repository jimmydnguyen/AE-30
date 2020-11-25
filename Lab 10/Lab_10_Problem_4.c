//Problem 4

#include <stdio.h>
#include <math.h>

void main (void)
{
    float x, y, i, a, b, c;
    printf("Please enter an input value for a:\n");
    scanf("%f",&a);
    printf("Please enter an input value for b:\n");
    scanf("%f", &b);
    printf("Please enter an input value for c:\n");
    scanf("%f", &c);


    if (a == 0) {

    printf("The solution to the first order equation is x = %.2f\n",-c/b);


    }


    else {
    y = b*b-4*a*c;
    if (y<0) {
        x = -b/(2*a);
        i = sqrt(-1*(y))/(2*a);
        printf("x = %.2f + %.2f i\n", x, i);
        printf("x = %.2f - %.2f i\n", x, i);
    }

    else if (y==0) {

            x = (-1*b)/(2*a);
            printf("x = %.2f\n", x);
        }


        else {

            x = (-1*b + sqrt(y))/(2*a);
            printf("x = %.2f\n", x);
            x = (-1*b - sqrt(y))/(2*a);
            printf("x = %.2f\n", x);
        }
    }







}
