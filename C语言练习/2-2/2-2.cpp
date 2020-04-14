#include<stdio.h>
int main() {
	float celsius;
	float fahrenheit;
	scanf("%f", &fahrenheit);
	celsius = 5.0/9*(fahrenheit - 32);
	printf("Input F:F=%.2f,C=%.2f", fahrenheit, celsius);
	return 0;
}