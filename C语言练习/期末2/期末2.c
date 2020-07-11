#include<stdio.h>
int main() {
	float sum, weight,prise1, prise2;

	scanf("%f %f %f", &weight, &prise1, &prise2);
	sum = (7.8 - weight) * prise1 + prise2;
	printf("%.2f", sum);
	return 0;
}