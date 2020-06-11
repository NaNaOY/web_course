#include <stdio.h>
int fact(int n)
{
	static int f = 1;
	f *= n;
	return f;
}
int main()
{
	int n;
	printf("Please input n: ");
	scanf("%d", &n);
	printf("Output:\n");
	for (int i = 1; i <= n; i++)
		printf("%d!=%d\n", i, fact(i));
	return 0;
}