#include <stdio.h>
#include <math.h>
int LOL(int x, int n);
int main() {
	int sum;
	int pro1, pro2;
	pro1 = LOL(15,3);
	pro2 = LOL(4, 5);
	sum = pro1+pro2;
	printf("%d", sum);
	return 0;
}
int LOL(int x, int n) {
	int result;
	result = pow(x,n)-6;
	return (result);
}