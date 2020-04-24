#include<stdio.h>
int main()
{char ch;
  ch=getchar();
  if(ch>='A'&&ch<='Z')
  		printf("1");
  else if(ch>='a'&&ch<='z')
  		printf("2");
  else if(ch>='0'&&ch<='9')
  		printf("3");
  else
  		printf("4");
  return 0;	
}
