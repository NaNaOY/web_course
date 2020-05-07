#include <stdio.h>
int main(){
	int i=0,n;
	printf("please input a interger:");
	scanf("%d",&n);	
	if(n>=0){
		do{
			printf("%d\n",n%10);
			n=n/10;
			i++;
		} while(n!=0);
		printf("It is a %d-digit number\n",i);}
	else
		printf("input error"); 
	return 0;
}



