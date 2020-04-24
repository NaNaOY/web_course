#include <math.h>
#include<stdio.h>
int main()
{
	double x, y;
	scanf("%lf", &x);
	if (x < 0)
		y = (-x) + 5;
	else
		if (x == 0)
			y = 0;
		else
			if (x < 10)
				y = pow(2 * x, 0.5) - 1;
			else
				y = (0.75 * x) - 11;
	printf("x=%.2lf,y=%.2lf\n",x,y);
	return 0;
}
