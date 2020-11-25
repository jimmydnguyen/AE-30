//Problem 5

#include <stdio.h>
#include <math.h>


//K is the kinetic energy [J]
//m is the mass of the object [kg]
//v is the velocity of the object [m/s]

float main(void)
{
    float m, v, K;
    printf("PLease enter a value for the mass(m) of the object:\n");
    scanf("%f", &m);
    printf("Please enter the velocity (v) of the object:\n");
    scanf("%f", &v);

    K = 0.5*m*v*v;

    printf("The kinetic energy (K) of the object is %f", K);



}
