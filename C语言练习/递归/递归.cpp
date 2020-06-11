#include<stdio.h>
double fun(int n);
int main() {
	int n=0;
	double temp ;	
	/*double temp;*/
	printf("Please intput the number n\n");
	scanf_s("%d", &n);
	temp =fun(n);
	printf("%d!=%.0f\n", n, temp);
}
double fun(int n) {
	double f;
	if (n < 0) {
		printf("n<0,dataerror!");
		f = -1;
	}
	else if (n == 0) {
		f = 1;
	}
	else {
		f = fun(n - 1) * n;
	}
	return (f);
}