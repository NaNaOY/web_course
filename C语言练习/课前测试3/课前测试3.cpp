#include<stdio.h>
int main() {
	/*int i, n;
	double sum;
	printf("Enter n:");
	n=2;
	sum = 0;
	for (i = 1; i <= n; i++)
		sum = sum + 1.0 / (2 * i);
	printf("sum=%f\n", sum);
	return 0;*/
	int n;
	printf("请输入一个正整数：\n");
	n = 56789;
	while(n!=0){
		n = n % 10;
		printf("%d", n % 10);
		
	}
	return 0;

}