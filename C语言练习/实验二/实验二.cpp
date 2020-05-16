#include<stdio.h>
#include<math.h>
int main()
{
	int n = 1, count = 1;
	double sum = 1, term = 1;
	while (fabs(term) >= 1e-4)
	{
		term = term * (1.0 / n);
		sum = sum + term;
		n++;
		count++;
	}
	printf("e=%.4f\n", sum);
}
