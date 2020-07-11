#include <stdio.h>
int my_strlen(char* str)//不使用库函数，利用指针计算字符串的长度
{
	int i = 0;
	while (str[i] != '\0')
		i++;
	return (i);
}

int main()
{
	int s;
	char a[1000];

	scanf("%s", a);
	s = my_strlen(a);
	printf("The length of the string=%d", s);
	return 0;
}

