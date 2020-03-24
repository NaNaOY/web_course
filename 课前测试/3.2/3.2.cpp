#include<stdio.h>
int main() {
	float a,b,s;
	scanf("%f", &a);
	b = 3.14159;
	s = b * a * a;
	printf("r=%.2f\narea=%.2f", a, s);
	return 0;
}