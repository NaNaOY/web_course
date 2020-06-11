#include<stdio.h>
int main() {
	int array[4][4];
	int i, j;
	int sum1 = 0;
	int sum2 = 0;
	for ( i = 0; i < 4; i++) {
		for ( j = 0; j < 4; j++) {
			scanf("%d", &array[i][j]);
		}
	}	
	for (i = 0; i < 4; i++) {
		sum1 += array[i][i];
	}
	for (i = 0; i < 4; i++) {
		sum2 += array[i][3 - i];
	}
	printf("The sum of the main diagonal is %d\n", sum1);
	printf("The sum of the subdiagonal is %d\n", sum2);
	return 0;
}