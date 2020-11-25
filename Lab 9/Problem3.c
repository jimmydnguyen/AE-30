//Problem 3

#include <stdio.h>

void main(void)
{
    float height, y_w, pressure;
    printf("Please input the value for the depth of water:\n");
    scanf("%f", &height);

    y_w = 9.8; //[kN/m^3]

    pressure = height*y_w;

    printf("The pressure at this %.2f depth is %.2f", height, pressure);




}
