#include <stdio.h>
int main(){
	double x,y;
	char n;
	scanf("%lf %c%lf",&x,&n,&y);
	switch(n){
		case '+':
			printf("%.2lf+%.2lf=%.2lf\n",x,y,x+y);
			break;
		case '-':
			printf("%.2lf-%.2lf=%.2lf\n",x,y,x-y);
			break;
		case '*':
			printf("%.2lf*%.2lf=%.2lf\n",x,y,x*y);
			break;
		case '/':
			if(y==0)
				printf("The divisor is 0\n");
			else 
			printf("%.2lf/%.2lf=%.2lf\n",x,y,x/y);
			break;
	}
	return 0;
}
