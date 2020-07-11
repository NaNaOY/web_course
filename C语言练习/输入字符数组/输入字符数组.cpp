#include<stdio.h>
#include<string.h>
int main() {
	char password[20];
	printf("请输入密码：\n");
	gets_s(password);
	while (strcmp(password, "abc") != 0) {
		printf("\n无效密码");
		printf("\n请重新输入密码");
		gets_s(password);
	}
	printf("OK");
	return 0;

}