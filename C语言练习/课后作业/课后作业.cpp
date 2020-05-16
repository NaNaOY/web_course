#include <stdio.h>
	void square(int x);
	int main() {
		int x;
		scanf("%d", &x);
		square(x);
		return 0;
	}
	void square(int x) {
		int i, j;
		j = 0;
		while (j < x) {
			for (i = 1; i <= x; i++) {
				printf("*");
				if (i % x == 0)
					printf("\n");
			}j++;
		}
	}
