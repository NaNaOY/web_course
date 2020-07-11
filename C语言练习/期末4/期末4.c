#include<stdio.h>
int luck(int cur, int luckynum) {
	int path[4], i, count = 0;
	for (i = 1; i <= 3; i++) {
		path[i] = cur % 10;
		cur = cur / 10;
		if (path[i] == luckynum) {
			count++;
		}
	}
	return count;
}
int main() {
	int first, last,luckynum,i,sum=0;
	scanf("%d %d %d", &first, &last, &luckynum);
	for ( i = first; i <= last; i++) {
		sum=sum+luck(i, luckynum);
	}
	printf("%d",sum);
	return 0;
}