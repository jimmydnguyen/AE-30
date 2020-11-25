//Problem 4

#include <stdio.h>
#include <math.h>



//T is the period [s]
//L is the pendulum length [m]
//g is the gravitational acceleration [m/s^2]


void main(void)
{
    float L, g, T;
    printf("Please input the value of the pendulum length (L):\n");
    scanf("%f", &L);

    g = 9.8;

    T = 2*M_PI*sqrt(L/g);

    printf("The period at this length, %f is %f", L, T);



}
