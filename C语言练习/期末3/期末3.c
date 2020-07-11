#include<stdio.h>
int main() {
	int a[100] = {1};
	int n;
	scanf("%d", &n);
	for (int i = 1; i <= n; i++) {
		a[i] = a[i - 1] + i - 1;
		printf("%5d", a[i]);
		

	}
	return 0;
}