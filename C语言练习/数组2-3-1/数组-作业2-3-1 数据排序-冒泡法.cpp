#include<stdio.h>
int main()
{
	int a[10],temp,i,j;
	printf("Please enter 10 integers:");
	for(i=0;i<10;i++)
	scanf("%d",&a[i]);
	for(i=1;i<10;i++)
		for(j=0;j<9;j++)
			if(a[j]>a[j+1]){
			temp=a[j];
			a[j]=a[j+1];
			a[j+1]=temp;}
	printf("in ascending order:\n"); 
	for(i=0;i<10;i++)
	printf("%4d",a[i]);
}
