//#include<stdio.h>
//int main() {
//	float i,k,j;
//	printf("Input 2 numbers: ");
//	scanf("%f %f",&i,&j);
//	printf("Output:\n");
//	if (j != 0){
//		printf("The result is: %.2f",i/j);
//	}
//	else {
//		printf("Divide by zero.\n");
//	}
//	return 0;
//}
#include<stdio.h>
int main() {
	int a;
	int box[5];
	int sum=0;
	printf("Please input a: \n");
	scanf("%d", &a);
	printf("Please input 5 numbers: \n");
	for (int i = 0; i < 5; i++) {
		scanf("%d", &box[i]);
		if (box[i] < a) {
			sum = sum + box[i];
		}
	}

	printf("Output:\n");
	printf("The sum is %d", sum);
	return 0;
}