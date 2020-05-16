#include<stdio.h>
#include<math.h>
double sum(double x);
int main() {
    double result=0;
	int n;
	scanf("%d", &n);
	for (int j = 1; j <=n; j++) {
		result =result+sum(j);
	}	
	printf("%.2lf", result);
	return 0;
}
double sum(double x) {
	double num1 =0;
	num1 = pow(-1, (x-1))*(x/(x+1));
	return num1;
}