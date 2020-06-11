#include<stdio.h>
int main() {
	int box[40];
	int n;
	int j = 0;
	scanf("%d", &n);
	printf("Please enter the number of students:");
	printf("Please enter the scores of %d students:", n);
	for (int i = 0; i < n; i++) {
		scanf("%d", &box[i]);
		if (box[i] < 60) {
			j++;
		}
	}
	printf("Number of failures is %d", j);
	return 0;
}

//#include<stdio.h>
//int main() {
//	int a[10];
//	printf("Please enter 10 integers:The stored array in reverse order:\n");	
//	for (int i =0; i<10; i++) {
//		scanf("%d", &a[i]);
//	}
//	for (int i = 9; i >= 0; i--) {
//		printf("%4d", a[i]);
//	}
//	
//	return 0;
//}