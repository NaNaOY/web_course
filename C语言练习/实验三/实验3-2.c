#include <stdio.h>
int main() 
 {
	int r,n,m,temp;
scanf("%d%d",&n,&m);
if (n<m)
{
temp=n; 
n=m;
m=temp;
}

while(m!=0)
{
r=n%m;
n=m;
m=r;
}
printf("%d\n",n);
return 0;
}


