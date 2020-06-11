#include "stdio.h"
#include "string.h"
int main() {
	int i;
	char str[100], right[] = "Dennis Ritchie";
	for (i = 1; i <= 3; i++) {
		printf("Who is the inventor of C?");
		scanf_s("%s", str);
		if (strcmp(right, str)==0) {
			printf(" GOOD"); 
			break;
		}
		else if (i == 3)
			printf("\nDennis Ritchie");
		else
			printf(" try again\n");
	}
	return 0;
}
