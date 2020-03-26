#include<stdio.h>
int main() {
	//float a,b,s;
	//scanf("%f", &a);
	//b = 3.14159;
	//s = b * a * a;
	//printf("r=%.2f\narea=%.2f", a, s);
	//return 0;
	int x, y, n;
	n = 1;
	x = n++;
	y=--n;
	printf("%d %d %d", n,x,y);
	return 0;
}