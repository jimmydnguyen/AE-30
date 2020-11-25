//Problem 1

#include <stdio.h>


void main (void)
{
    float Re;
    printf("Please enter a real value for the Reynolds number:\n");
    scanf("%f", &Re);

    if (Re<0) {
        printf("Please enter a value for Reynolds number that is greater or equal to 0. \n");}

    else if (Re<=2300) {
        printf("The flow is in the Laminar Region. \n");}

    else if (Re<= 4000) {
        printf("The flow is in the Transition Region. \n");}

    else {
        printf("The flow is in the Turbulent Region. \n");}

    }




