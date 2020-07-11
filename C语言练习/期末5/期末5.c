#include<stdio.h>
#define max_length 9000;
#define one_distance 400;
int main() {
	int length, icount ,i;
	length = icount = i = 0;
	for (i = 1;; i++) {
		icount++;
		length = length + one_distance;
		if ((length < 9400) && (length >= 9000)) {
			printf("%5d", icount);
			break;
		}

	}
	return 0;
}