#include<stdio.h>
#include<string.h>
void fun(char tt[]) {
	for (int i = 0; tt[i]!= 0; i++) {
		if (tt[i] >= 'A' && tt[i] <= 'Z')
			tt[i] = tt[i]+32;
	}
}
int main() {
	char a[100];
	fgets(a, sizeof(a), stdin);
	fun(a);
	puts(a);
	return 0;
}