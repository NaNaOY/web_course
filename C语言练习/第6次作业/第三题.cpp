#include<stdio.h>
int main() {
	int n, fact = 0;
	n = 13579;
	do {
		fact += n % 10;
		n /=10;
	} while (n != 0);
	printf("fact=%d\n", fact);
	return 0;

}