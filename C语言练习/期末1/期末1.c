#include<stdio.h>
int main() {
	int num;
	scanf("%d", &num);
	if (num == 1) {
		printf("Normal Area");
	}
	else if (num == 2) {
		printf("Middle Risk Area");
	}
	else if (num == 3) {
		printf("High Risk Area");
	}
	else {
		printf("Error Input");
	}
	return 0;
}