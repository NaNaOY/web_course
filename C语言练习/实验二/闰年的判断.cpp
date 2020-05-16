#include <stdio.h>
int fun(int y);
int main(){
	int m,y;
	scanf("%d",&y);
	m=fun(y);
	if (m==1)
		printf("yes");
	if (m==0)
		printf("no");
	return 0;
}
int fun(int y){
	int m,t;
	if(y%4==0 && y%100!=0)
		m=1;
	else if(y%400==0)
		m=1;
		else 
			m=0;
	return(m);
}

