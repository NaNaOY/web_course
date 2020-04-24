
#include<stdio.h>
int main()
{ 
	int x,hh,mm,ss;
 	scanf("%d",&x);
 	getchar();
 	hh=x/3600;
 	mm=x/60%60;
 	ss=x%60;
	printf("%d:%d:%d",hh,mm,ss); 
return 0;
} 
