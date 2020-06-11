
//将大写字母转换为小写字母
#include<stdio.h>
int main() {
	char a[26];
	int i;
	printf("Please input A....Z\n");
	for (i = 0; i < 26; i++) {
		a[i] = getchar();
	}
	for (i = 0; i < 26; i++) {
		putchar(a[i] + 32);
		printf("\n");
	}
	return 0;
}

//字符数组每个字符往后移动
#include<stdio.h>
int main() {
	char ch1[5],ch2[5];
	int i;
	printf("Please input China\n");
	for (i = 0; i < 5; i++) {
		ch1[i] = getchar();
	}
	for (i = 0; i < 5; i++) {
		ch2[i] = ch1[i] + 4;
	}
	for (i = 0; i < 5; i++) {
		putchar(ch2[i]);
		printf("\n");
	}
	return 0;
}

//以$字符为终止字符从键盘接受一组字符，并逆序输出
#include<stdio.h>
int main() {
	char a[80];
	int i=0,j;
	printf("输入一组字符，以$字符结束\n");
	a[i] = getchar();
	while (a[i] != '$') {
		i++;
		a[i] = getchar();
	}
	for(j = i - 1; j >= 0; j--) {
		putchar(a[j]);
	}
	printf("\n");
	return 0;
}

//以$字符为终止字符从键盘接受一组字符，查找其中数字字符并输出
#include<stdio.h>
int main() {
	char a[80];
	int i = 0, j;
	printf("输入一组字符，以$字符结束\n");
	a[i] = getchar();
	while (a[i] != '$') {
		i++;
		a[i] = getchar();
	}
	for (j = 0; j < i;j++) {
		if(a[j]>='0'&&a[j]<='9')
		putchar(a[j]);
	}
	printf("\n");
	return 0;
}