// Problem 4

#include <stdio.h>
#include <math.h>

void main (void)
{
    int k;
    float S, actualpercentError, acceptedValue, setP_Error;

    S = 0;
    k = 1;
    acceptedValue = 3.14159;
    setP_Error = 0.01;

    while(100*fabs((4*S-acceptedValue)/acceptedValue)>=setP_Error){
        S = S + pow(-1, k+1)/(2*k-1);
        k++;
    }

actualpercentError = 100*fabs((4*S-acceptedValue)/acceptedValue);
printf("At n = %d\n", k+1);
printf("The approximate value of pi is %.5f which is within %.2f of the accepted pi value %.5f\n", 4*S, actualpercentError, acceptedValue);

// N has to be 3150 to get the accepted value of 3.14159. The actual percent error is close to 0.001%.
}
