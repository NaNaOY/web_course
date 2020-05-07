#include <stdio.h>
int main()
{
    float a[10],max,min,sum,cod;
    int i;
    max=0;
    min=10;
    sum=0;
    printf("Please enter the scores of ten judges:");
    for(i=0;i<10;i++)
    {
        scanf("%f",&a[i]);
        if(a[i]>max) 
            max=a[i];
        if(a[i]<min)
            min=a[i];  
        sum+=a[i];
    }
    cod = (sum-max-min)/8 ;
    printf("The player's final scores :%.2f\n",cod);
    return 0;
}
