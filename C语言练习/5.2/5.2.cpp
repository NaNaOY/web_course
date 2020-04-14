#include<stdio.h>
int main()
{
    char ch;
    scanf("%c", &ch);
    if (ch >= 48 && ch <= 57)
    {
        printf("%c is a numeric character.\n", ch);
    }
    else if (ch >= 65 && ch <= 90)

    {
        printf("%c is a english letter.\n", ch);
    }
    else if (ch >= 97 && ch <= 122)
    {
        printf("%c is a english letter.\n", ch);
    }
    else if (ch == 32)
    {
        printf("is a blankspace.\n");
    }
    else
    {
        printf("%c is other character.\n", ch);

    }
    return 0;
}