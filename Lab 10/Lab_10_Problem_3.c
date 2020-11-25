//Problem 3

#include <stdio.h>
#include <math.h>

void main (void)
{
    float A, l, w, a, b, h, R;
    printf("Please choose the geometric shape option according to Table 1. \n");
    printf("1: Rectangle \n");
    printf("2: Triangle \n");
    printf("3: Circle \n");
    printf("4: Ellipse \n");

    int option;

    printf("please enter your option:\n");
    scanf("%d", &option);

    switch (option)

    {

        case 1:
            printf("You have chosen the Rectangular shape. \n");
            printf("Please enter a value for the length:\n");
            scanf("%f", &l);
            printf("Please enter a value for the width:\n");
            scanf("%f", &w);

            if (l<=0 || w<=0) {
                printf("Sorry. Please enter a value greater than 0. \n");
            }

            else {
                A=l*w;

                printf("The Area of the rectangle is %.2f.\n",A);
            }
            break;

        case 2:
            printf("You have chosen the Trinagular shape. \n");
            printf("Please enter a value for the base:\n");
            scanf("%f", &b);
            printf("Please enter a value for the height:\n");
            scanf("%f", &h);

            if (b<=0 || h<=0) {
                printf("Sorry. Please enter a value greater than 0. \n");
            }

            else {
                A=0.5*b*h;

                printf("The Area of the rectangle is %.2f.\n",A);
            }
            break;

        case 3:
            printf("You have chosen the Circular shape. \n");
            printf("Please enter a value for the Radius:\n");
            scanf("%f", &R);


            if (R<=0) {
                printf("Sorry. Please enter a value greater than 0. \n");
            }

            else {
                A = M_PI*R*R;

                printf("The Area of the rectangle is %.2f.\n",A);
            }
            break;

        case 4:
            printf("You have chosen the Elliptical shape. \n");
            printf("Please enter a value for a:\n");
            scanf("%f", &a);
            printf("Please enter a value for b:\n");
            scanf("%f", &b);

            if (a<=0 || b<=0) {
                printf("Sorry. Please enter a value greater than 0. \n");
            }

            else {
                A = M_PI*a*b;

                printf("The Area of the rectangle is %.2f.\n",A);
            }
            break;

        default:
        printf("Sorry, but your option is invalid. \n");



    }





}
