#include<stdio.h>
#include<string.h>
int main() {
	char password[10];
	scanf("%s", password);
	printf("\n");
	if (strcmp(password, "admin") == 0) {
		printf("Has been registered");
	}
	else if (strcmp(password, "user") == 0) {
		printf("Has been registered");
	}
	else if (strcmp(password, "student") ==0) {
		printf("Has been registered");
	}
	else if (strcmp(password, "teacher") == 0) {
		printf("Has been registered");
	}
	else {
		printf("Unregistered");
	}
	return 0;
}