#include<stdio.h>
#include <math.h>
int main()
{
	double  p0, rate, n;
	double future;
	scanf("%lf %lf %lf", &p0, &rate, &n);
		future= pow(1+rate, n) * p0;
	printf("%.2lf\n", future);
	return 0;
}