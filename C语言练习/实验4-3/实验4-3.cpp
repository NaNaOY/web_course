#include<stdio.h>
int max(int a,int b,int c)
{
	int t;
	t=a;
	if(b>t)
		t=b;
	if(c>t)
		t=c;
	return t;
}
int main()
{
	int n,a,b,c,d,e,i;
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		scanf("%d%d%d%d%d",&a,&b,&c,&d,&e);
		printf("%d\n",max(a,b,max(c,d,e)));
	}
	return 0;
}
