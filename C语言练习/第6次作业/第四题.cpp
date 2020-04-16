#include <stdio.h>
#include <math.h>
int main()
{
	double x, y;
	scanf("%lf", &x);
	if (x < -1) {
		y = x * 2 - 1;
	}
	else if (x >= -1 && x < 1 && x != 0)
	{
		y = 2 * x / 3;
	}
	else if (x >= 1)
		y = exp(2) + sqrt(x);
	else
		y = 0;
	printf("x=%.2lf,y=%.2lf\n", x, y);
	return 0;
}
