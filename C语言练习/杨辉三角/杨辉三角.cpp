#include<stdio.h>
int main() {
	int n;
	printf("Please enter number of rows:");
	scanf("%d",&n);
	int a[10][10] = { {1},{1,1} };
	int i, j;
	for (i = 2; i <= n; i++) {
		a[i][0] = 1;
		a[i][i] = 1;
		for (j = 1; j < i; j++) {
			a[i][j] = (a[i - 1][j]+a[i-1][j-1]);
		}
	}
	for (i = 0; i <n; i++) {
		for (j = 0; j <= i; j++) {
			printf("%6d",a[i][j]);
		}
		printf("\n");
	}

	return 0;
}