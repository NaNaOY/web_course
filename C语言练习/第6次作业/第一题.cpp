#include <stdio.h>
int main()
{
	char c;
	int total = 0, letter = 0, number = 0, space = 0, other = 0;
	while ((c = getchar()) != '\n')
	{
		if (c >= 'a' && c <= 'z' || c >= 'A' && c < 'Z')
			letter++;
		else if (c >= '0' && c <= '9')
			number++;
		else if (c == ' ')
			space++;
		else
			other++;
	}
	total = letter + number + space + other;
	printf("total=%d,letter=%d,number=%d,space=%d,other=%d\n", total, letter, number, space, other);
	return 0;
}
