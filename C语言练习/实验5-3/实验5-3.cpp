#include<stdio.h>
int main() {
	int N = 1;
	int box[1000];
	int count = 0;
	int temp = 0;
	while (N != 0) {
		scanf("%d\n", &N);
		if (N == 0) {
			break;
		}
		int i;
		for ( i = 0; i < N; i++) {
			scanf("%d ", &box[i]);
		}
		scanf("\n%d", &temp);
		for (i = 0; i < N; i++) {
			if (temp == box[i]) {
				count++;
			}
		}
		printf("%d\n",count);
		count = 0;
	}
	return 0;
}