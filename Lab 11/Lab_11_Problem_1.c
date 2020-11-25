// Problem 1

#include <stdio.h>
#include <math.h>

void main (void)

{
    int n, ii, S;

    printf("Please enter an integer for the value of n:\n");
    scanf("%d",&n);

    S = 0;

    for (ii=1; ii<=n; ii++) {
            S= S+pow(ii,ii);
    }

    printf("The sum is %d.\n", S);





}
