#include <stdio.h> 
int main() 
{ 
int n=1000; 
int r,j,i; 
for(i=1;i<=n; i++){ 
r = 0; 
for(j=1;j<i;j++){ 
if(i%j == 0){ 
r = r + j; 
} 
} 
if(r == i){ 
printf("%d\n",r); 
} 
} 
return 0; 
} 
