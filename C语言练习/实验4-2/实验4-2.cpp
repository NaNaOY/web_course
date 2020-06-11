#include <stdio.h>
double suv(int m,int n){
	int i,j;
	double a,x=1,y=1;
	for (i=1;i<=m;i++){
		x=i*x;}
	for (j=1;j<=m-n;j++){
		y=j*y;}
	a=x/y;
	return a;
}
int main(){
	int m,n;
	double a;
	while( scanf ("%d %d",&m,&n) == 2 ){
	if (m==0 ||n==0) break;
	else	
		a=suv(m,n);
		printf("%0.lf\n",a);}
		return 0;
}
