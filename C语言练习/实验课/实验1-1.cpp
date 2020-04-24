#include<stdio.h>
int main(){
	int x,y;
	scanf("%d",&x);
	y=x%100000%10000%1000;
	printf("%d",y);
	return 0;
}
