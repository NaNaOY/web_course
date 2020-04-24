#include<stdio.h>
int main() {
	int n,i,sum=1,s=0;
	printf("please input an integer:");
	scanf("%d",&n);
	for(i=1;i<=n;i++){
		sum*=i;
		s+=sum;
	}
	if(n>0)
		printf("the sum of the factorial is %d",s);
		else if(n==0)
		printf("the sum of the factorial is 1");
		else
		printf("input error!");
	return 0;
}

