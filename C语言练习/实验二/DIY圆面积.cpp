#include <stdio.h>
float area(float r);
int main(){
	float r,s;
	scanf("%f",&r);
	s=area(r);
	printf("r=%.2f,s=%.2f\n",r,s);
	return 0;
}
float area(float r){
	return 3.14159*r*r;
}
