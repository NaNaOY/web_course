#include<stdio.h>
int main() {
	int fahrenheit1, fahrenheit2;
	scanf("%d %d", &fahrenheit1, &fahrenheit2);
	float temp;
	for (int i = fahrenheit1; i <= fahrenheit2; i += 4) {
		temp = 5.0 / 9 * (fahrenheit1 - 32);
		printf("%d%10.2f\n", fahrenheit1, temp);
		fahrenheit1 += 4;
	}
	return 0;
}
